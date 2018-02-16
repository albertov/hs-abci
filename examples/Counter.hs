{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
module Counter (main) where

import           Network.ABCI
import           Network.ABCI.Internal.Wire (beWordFromBytes)
import           Control.Monad (when)
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
import           System.Environment

data CounterState = CounterState
  { csSerial    :: !Bool
  , csTxCount   :: !Int64
  , csHashCount :: !Int64
  } deriving Show

initialState :: Bool -> CounterState
initialState isSerial = CounterState isSerial 0 0

main :: IO ()
main = do
  stateVar <- STM.newTVarIO . initialState =<< hasSerialArg

  let enableSerial =
        STM.modifyTVar' stateVar (\s -> s { csSerial = True })

      incHashCount =
        STM.modifyTVar' stateVar (\s -> s { csHashCount = csHashCount s + 1 })

      incTxCount =
        STM.modifyTVar' stateVar (\s -> s { csTxCount = csTxCount s + 1 })


  serveApp $ \sockAddr -> do
    putStrLn ("Received connection from " ++ show sockAddr)

    -- You can do some per-connection initialization here if needed...

    return $ App $ \case
      RequestEcho msg -> return (ResponseEcho msg)

      RequestFlush -> return def

      RequestInfo version -> do
        CounterState{csHashCount=hs, csTxCount=txs} <- STM.readTVarIO stateVar
        return def
          { responseInfo'data =
              fromString (printf "{\"hashes\":%d, \"txs\":%d}" hs txs)
          , responseInfo'version = version
          }

      RequestSetOption key value -> do
        when (key=="serial" && value=="on") (STM.atomically enableSerial)
        return def

      RequestDeliverTx txData -> do
        (code, log') <- processTransaction stateVar txData incTxCount
        return (ResponseDeliverTx code "" log' [])

      RequestCheckTx txData -> do
        (code, log') <- processTransaction stateVar txData (return ())
        return (ResponseCheckTx code "" log' 0 0)

      RequestCommit -> do
        STM.atomically incHashCount
        CounterState{csTxCount} <- STM.readTVarIO stateVar
        let data' = if csTxCount == 0 then "" else serializeBe csTxCount
        return (ResponseCommit codeTypeOK data' "")

      RequestQuery{requestQuery'path=path} -> do
        state <- STM.readTVarIO stateVar
        let retVal v = return def { responseQuery'value = fromString (show v) }
            retErr msg = return def { responseQuery'log = fromString msg }
        case path of
          "hash" -> retVal (csHashCount state)
          "tx"   -> retVal (csTxCount state)
          p  -> retErr $ printf
                  "Invalid query path. Expected hash or tx, got %s" (show p)

      RequestInitChain _ -> return def
      RequestBeginBlock _ _ _ _ -> return def
      RequestEndBlock _ -> return def

serializeBe :: Int64 -> ByteString
serializeBe = LBS.toStrict . Put.runPut . Put.putInt64be

processTransaction
  :: STM.TVar CounterState
  -> ByteString
  -> (STM.STM ())
  -> IO (CodeType, Text)
processTransaction stateVar txData increment = STM.atomically $ do
    CounterState{csSerial,csTxCount} <- STM.readTVar stateVar
    case parseTxValue txData of
      Right txValue -> do
        if (csSerial && txValue /= csTxCount)
          then return
            ( codeTypeBadNonce
            , fromString
               (printf "Invalid nonce. Expected %d, got %d" csTxCount txValue)
            )
          else increment >> return (codeTypeOK, "")
      Left err ->
        return (codeTypeEncodingError, fromString err)

parseTxValue :: ByteString -> Either String Int64
parseTxValue s =
  case maybe (Just s) unhex (BS.stripPrefix "0x" s) of
    Just uh -> fromIntegral <$> beWordFromBytes uh
    Nothing -> Left ("Invalid hex string: " ++ show s)

hasSerialArg :: IO Bool
hasSerialArg = fmap (any (== "--serial")) getArgs
