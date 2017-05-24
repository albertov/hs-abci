{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE OverloadedStrings #-}
module Network.ABCI where

import qualified Proto.Network.ABCI.Types as ABCI

import           Control.Monad
import qualified Data.Binary.Get as Get
import qualified Data.Binary.Put as Put
import qualified Data.ByteString as BS
import           Data.ByteString.Lazy (toChunks)
import           Data.Conduit ( Conduit
                              , runConduit
                              , awaitForever
                              , await
                              , yield
                              , (=$=))
import qualified Data.Conduit.List as CL
import           Data.Conduit.Network ( AppData
                                      , appSource
                                      , appSink
                                      , runTCPServer
                                      , serverSettings)
import           Data.Default (def)
import           Data.Monoid ((<>))
import           Data.ProtoLens.Encoding (decodeMessage, encodeMessage)
import           Data.String (fromString)
import           Lens.Micro

abciPort :: Int
abciPort = 46658

maxMessageLen :: Int
maxMessageLen = 1024*1024 -- 1Mb

serve :: IO ()
serve = runTCPServer (serverSettings abciPort "*") (runConduit . setupServer)

setupServer :: AppData -> Conduit i IO o
setupServer app =
  appSource app
    =$= decodeLengthPrefixC
    =$= CL.map (join . fmap decodeMessage)
    =$= CL.mapM respond
    =$= CL.map encodeMessage
    =$= encodeLengthPrefixC
    =$= appSink app

-- | Transforms a stream of 'ByteString' to a stream of varlength-prefixed
--   'ByteString's
encodeLengthPrefixC
  :: Monad m
  => Conduit BS.ByteString m BS.ByteString
encodeLengthPrefixC = awaitForever $
  mapM yield . toChunks . Put.runPut . putLengthPrefixedByteString


-- | Transforms a stream of varlength-prefixed 'ByteString's to a stream
--   of 'ByteString's
decodeLengthPrefixC
  :: Monad m
  => Conduit BS.ByteString m (Either String BS.ByteString)
decodeLengthPrefixC = go "" initialDecoder
  where
    go leftOver (Get.Done leftOver2 _ result) = do
      yield (Right result)
      go (leftOver <> leftOver2) initialDecoder
    go leftOver (Get.Fail leftOver2 _ err) = do
      yield (Left err)
      go (leftOver <> leftOver2) initialDecoder
    go "" decoder = do
      mInput <- await
      case mInput of
        Nothing -> go "" (Get.pushEndOfInput decoder)
        Just s  -> go "" (Get.pushChunk decoder s)
    go leftOver decoder =
      go "" (Get.pushChunk decoder leftOver)

    initialDecoder = Get.runGetIncremental getLengthPrefixedByteString

putLengthPrefixedByteString :: BS.ByteString -> Put.Put
putLengthPrefixedByteString s = do
  Put.putWord8 8
  Put.putWord64be (fromIntegral (BS.length s))
  Put.putByteString s


getLengthPrefixedByteString :: Get.Get BS.ByteString
getLengthPrefixedByteString = do
  lenLen <- Get.getWord8
  len <- case lenLen of
           1 -> fromIntegral <$> Get.getWord8
           2 -> fromIntegral <$> Get.getWord16be
           4 -> fromIntegral <$> Get.getWord32be
           8 -> fromIntegral <$> Get.getWord64be
           n -> fail ("Unsupported lenLen: " ++ show n)
  if len <= maxMessageLen
     then Get.getByteString len
     else fail "Message is too large"

respond :: Either String ABCI.Request -> IO ABCI.Response
respond (Left err) = do
  return (def & ABCI.exception .~ ABCI.ResponseException (fromString err))
respond (Right someReq)
  | Just (ABCI.RequestFlush) <- someReq ^. ABCI.maybe'flush = do
      return (def & ABCI.flush .~ ABCI.ResponseFlush)
  | Just (ABCI.RequestEcho msg) <- someReq ^. ABCI.maybe'echo = do
      return (def & ABCI.echo .~ ABCI.ResponseEcho msg)
  | otherwise = do
      print someReq
      return notImplementedError

notImplementedError :: ABCI.Response
notImplementedError =
  def & ABCI.exception .~ ABCI.ResponseException "Not implemented"
