{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RankNTypes #-}
module Network.ABCI (
  serveApp
, serveAppWith
, beWordFromBytes

-- * Re-exports
, serverSettings
, module ReExport
) where

import qualified Proto.Network.ABCI.Types as ABCI
import           Network.ABCI.Types (App(..), withProtoRequest, toProtoResponse)
import           Network.ABCI.Types as ReExport hiding ( withProtoRequest
                                                       , toProtoResponse)

import           Control.Monad
import           Control.Monad.IO.Class (MonadIO)
import           Control.Monad.Trans.Control (MonadBaseControl)
import qualified Data.Binary.Get as Get
import qualified Data.Binary.Put as Put
import           Data.Bits (shiftL)
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
                                      , ServerSettings
                                      , appSource
                                      , appSink
                                      , appSockAddr
                                      , runGeneralTCPServer
                                      , serverSettings)
import           Data.Default (def)
import           Data.Monoid ((<>))
import qualified Data.ProtoLens.Encoding as PL
import           Data.String (fromString)
import           Data.Text (Text)
import           Data.Word (Word64)
import           Lens.Micro
import           Network.Socket (SockAddr)

maxMessageLen :: Int
maxMessageLen = 1024*1024 -- 1Mb, FIXME how large should we make it?

defaultSettings :: ServerSettings
defaultSettings = serverSettings 46658 "127.0.0.1"

serveAppWith
  :: (MonadIO m, MonadBaseControl IO m)
  => ServerSettings -> (SockAddr -> m (App m)) -> m ()
serveAppWith cfg mkApp = runGeneralTCPServer cfg $ \appData -> do
  app <- mkApp (appSockAddr appData)
  runConduit (setupConduit app appData)

serveApp
  :: (MonadIO m, MonadBaseControl IO m)
  => (SockAddr -> m (App m)) -> m ()
serveApp = serveAppWith defaultSettings

setupConduit :: MonadIO m => App m -> AppData -> Conduit i m o
setupConduit app appData =
      appSource appData
  =$= decodeLengthPrefixC
  =$= CL.map (join . fmap PL.decodeMessage)
  =$= CL.mapM (respondWith app)
  =$= CL.map PL.encodeMessage
  =$= encodeLengthPrefixC
  =$= appSink appData

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
  lenLen <- fromIntegral <$> Get.getWord8
  mLen <- fmap fromIntegral . beWordFromBytes <$> Get.getByteString lenLen
  case mLen of
    Just len ->
      if len <= maxMessageLen
        then Get.getByteString len
        else fail "Message is too large"
    Nothing -> fail "Unsupported varlen"

respondWith
  :: Monad m
  => App m -> Either String ABCI.Request -> m ABCI.Response
respondWith _ (Left err) = respondErr ("Invalid request: " <> fromString err)
respondWith (App app) (Right req) =
  withProtoRequest req (maybe (respondErr "Invalid request")
                              (fmap toProtoResponse . app))

respondErr :: Monad m => Text -> m ABCI.Response
respondErr err =
  return (def & ABCI.exception .~ ABCI.ResponseException err)

beWordFromBytes :: BS.ByteString -> Maybe Word64
beWordFromBytes s | BS.length s > 8 = Nothing
beWordFromBytes s = Just (snd (BS.foldr' step (0,0) s)) where
  step w (!pos,!acc) = (pos+1, acc + (fromIntegral w `shiftL` (pos*8)))
