{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
module Counter (main) where

import           Network.ABCI
import           Network.ABCI.Internal.Wire (beWordFromBytes)
import           Control.Monad (when)
import           Control.Monad.IO.Class (MonadIO (liftIO))
import           Control.Monad.Trans.Resource (allocate)
import qualified Control.Concurrent.STM as STM
import           Data.ByteString (ByteString)
import qualified Data.ByteString as BS
import qualified Data.ByteString.Lazy as LBS
import           Data.Int (Int64)
import qualified Data.Binary.Put as Put
import           Data.Hex (unhex)
import           Data.String (fromString)
import           Data.Text (Text)
import           Text.Printf (printf)

data CounterState = CounterState
  { csSerial    :: !Bool
  , csTxCount   :: !Int64
  , csHashCount :: !Int64
  } deriving Show

initialState :: CounterState
initialState = CounterState False 0 0

main :: IO ()
main = do
  stateVar <- STM.newTVarIO initialState

  let enableSerial =
        STM.modifyTVar' stateVar (\s -> s { csSerial = True })

      incHashCount =
        STM.modifyTVar' stateVar (\s -> s { csHashCount = csHashCount s + 1 })

      incTxCount =
        STM.modifyTVar' stateVar (\s -> s { csTxCount = csTxCount s + 1 })



  serveApp $ \sockAddr -> do

    _ <- allocate
      -- The App's monad is wrapped with a 'ResourceT' so we can
      -- manage per-connection resources safely.
      -- See the readme at https://hackage.haskell.org/package/resourcet
      -- for more information.
      -- That means we can call 'allocate' here to implement a simple
      -- logger for connection creation and destruction.
      (putStrLn ("Received connection from " ++ show sockAddr))
      (const (putStrLn ("Dropped connection from " ++ show sockAddr)))

    return $ App $ \case
      RequestEcho msg -> return (ResponseEcho msg)

      RequestFlush -> return def

      RequestInfo -> do
        CounterState{csHashCount=hs, csTxCount= txs} <- readTVarIO stateVar
        return def
          { responseInfo'data =
              fromString (printf "{\"hashes\":%d, \"txs\":%d}" hs txs)
          }

      RequestSetOption key value -> do
        when (key=="serial" && value=="on") (atomically enableSerial)
        return def

      RequestDeliverTx txData -> do
        (code, log') <- processTransaction stateVar txData incTxCount
        return (ResponseDeliverTx code "" log')

      RequestCheckTx txData -> do
        (code, log') <- processTransaction stateVar txData (return ())
        return (ResponseCheckTx code "" log')

      RequestCommit -> do
        atomically incHashCount
        CounterState{csTxCount} <- readTVarIO stateVar
        let data' = if csTxCount == 0 then "" else serializeBe csTxCount
        return (ResponseCommit OK data' "")

      RequestQuery{requestQuery'path=path} -> do
        state <- readTVarIO stateVar
        let retVal v = return def { responseQuery'value = fromString (show v) }
            retErr msg = return def { responseQuery'log = fromString msg }
        case path of
          "hash" -> retVal (csHashCount state)
          "tx"   -> retVal (csTxCount state)
          p  -> retErr $ printf
                  "Invalid query path. Expected hash or tx, got %s" (show p)

      _ -> return (ResponseException "Not implemented")

atomically :: MonadIO m => STM.STM a -> m a
atomically = liftIO . STM.atomically

readTVarIO :: MonadIO m => STM.TVar a -> m a
readTVarIO = liftIO . STM.readTVarIO

serializeBe :: Int64 -> ByteString
serializeBe = LBS.toStrict . Put.runPut . Put.putInt64be

processTransaction
  :: STM.TVar CounterState
  -> ByteString
  -> (STM.STM ())
  -> ResourceT IO (CodeType, Text)
processTransaction stateVar txData increment = atomically $ do
  CounterState{csSerial,csTxCount} <- STM.readTVar stateVar
  case parseTxValue txData of
    Right txValue -> do
      if (csSerial && txValue /= csTxCount)
        then return
          ( BadNonce
          , fromString
             (printf "Invalid nonce. Expected %d, got %d" csTxCount txValue)
          )
        else increment >> return (OK, "")
    Left err ->
      return (EncodingError, fromString err)


parseTxValue :: ByteString -> Either String Int64
parseTxValue s =
  case maybe (Just s) unhex (BS.stripPrefix "0x" s) of
    Just uh -> fromIntegral <$> beWordFromBytes uh
    Nothing -> Left ("Invalid hex string: " ++ show s)
