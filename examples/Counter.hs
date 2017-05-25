{-# LANGUAGE GADTs #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
module Counter (main) where

import           Network.ABCI
import qualified Control.Concurrent.STM as STM
import           Data.ByteString (ByteString)
import qualified Data.ByteString as BS
import qualified Data.ByteString.Lazy as LBS
import           Data.Monoid ((<>))
import qualified Data.Binary.Put as Put
import           Data.Hex (unhex)
import           Data.String (fromString)
import           Data.Text (Text)
import           Data.Word (Word64)
import           Text.Printf (printf)

data CounterState = CounterState
  { csEnableSerial     :: !Bool
  , csTxCount          :: !Word64
  , csHashCount        :: !Word64
  , csLastBlockHeight  :: !Word64
  , csLastBlockAppHash :: !ByteString
  } deriving Show

initialState :: CounterState
initialState = CounterState False 0 0 0 ""

main :: IO ()
main = do
  stateVar <- STM.newTVarIO initialState

  let setEnableSerial v =
        STM.atomically $
          STM.modifyTVar' stateVar (\s -> s { csEnableSerial = v})

      incHashCount =
        STM.atomically $
          STM.modifyTVar' stateVar (\s -> s { csHashCount = csHashCount s + 1})

  serveApp $ \sockAddr -> do
    putStrLn ("Received connection from " ++ show sockAddr)

    -- You can do some per-connection initialization here if needed...

    return $ App $ \case
      RequestEcho msg -> return (ResponseEcho msg)

      RequestFlush    -> return ResponseFlush

      RequestInfo    -> do
        CounterState{ csHashCount
                    , csTxCount
                    , csLastBlockHeight
                    , csLastBlockAppHash
                    } <- STM.readTVarIO stateVar
        return ResponseInfo
          { responseInfo'data =
              fromString $ printf "# hashes: %d # txs: %d"
                csHashCount csTxCount
          , responseInfo'version = "1.0"
          , responseInfo'lastBlockHeight   = csLastBlockHeight
          , responseInfo'lastBlockAppHash  = csLastBlockAppHash
          }

      RequestSetOption "serial" "on"  -> do
        setEnableSerial True
        return (ResponseSetOption "enabled serial")
      RequestSetOption "serial" "off" -> do
        setEnableSerial False
        return (ResponseSetOption "disabled serial")
      RequestSetOption "serial" _ ->
        return (ResponseException "Invalid value for option 'serial'")
      RequestSetOption k _ ->
        return (ResponseException ("Invalid option '"<>k<>"'"))

      RequestDeliverTx txData -> do
        let update serial =
              STM.modifyTVar' stateVar (\s -> s {csTxCount = serial})
        (code, log') <- processTransaction stateVar txData update
        return (ResponseDeliverTx code "" log')

      RequestCheckTx txData -> do
        let update _ = return ()
        (code, log') <- processTransaction stateVar txData update
        return (ResponseCheckTx code "" log')

      RequestCommit -> do
        incHashCount
        CounterState{csTxCount} <- STM.readTVarIO stateVar
        let data' = if csTxCount == 0 then "" else serializeBe csTxCount
        return (ResponseCommit OK data' "Committed")

      RequestQuery{} ->
        return (ResponseException "Not implemented")

      RequestInitChain{} ->
        return (ResponseException "Not implemented")

      RequestBeginBlock{} ->
        return (ResponseException "Not implemented")

      RequestEndBlock{} ->
        return (ResponseException "Not implemented")

serializeBe :: Word64 -> ByteString
serializeBe = LBS.toStrict . Put.runPut . Put.putWord64be

processTransaction
  :: STM.TVar CounterState
  -> ByteString
  -> (Word64 -> STM.STM ())
  -> IO (CodeType, Text)
processTransaction stateVar txData update = STM.atomically $ do
  CounterState{csEnableSerial,csTxCount} <- STM.readTVar stateVar
  case parseSerial txData of
    Right serial -> do
      if csEnableSerial && serial == csTxCount || not csEnableSerial
         then do
           update (serial+1)
           return (OK, "OK")
         else
           return (BadNonce, "Invalid Nonce")
    Left err ->
      return (EncodingError, fromString err)


parseSerial :: ByteString -> Either String Word64
parseSerial s =
  case maybe (Just s) unhex (BS.stripPrefix "0x" s) of
    Just uh -> maybe (Left "Unsupported varlen") Right (beWordFromBytes uh)
    Nothing -> Left ("Invalid hex string: " ++ show s)
