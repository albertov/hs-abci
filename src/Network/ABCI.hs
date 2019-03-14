{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE RankNTypes #-}
module Network.ABCI (
  serveApp
, serveAppWith
, defaultSettings
-- * Re-exports
, serverSettings
, module ReExport
) where

import qualified Proto.Types as ABCI
import           Network.ABCI.Internal.Wire as Wire
import           Network.ABCI.Types ( App(..)
                                    , Response(ResponseFlush)
                                    , withProtoRequest
                                    , isAsynchronousResponse
                                    , toProtoResponse)
import           Network.ABCI.Types as ReExport hiding (
                    withProtoRequest
                  , toProtoResponse)

import           Control.Monad
import           Control.Monad.IO.Class (MonadIO(..))
import           Control.Monad.Trans.Control (MonadBaseControl)
import           Data.Conduit (ConduitT, runConduit, (.|), awaitForever, yield)
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
import           Network.Socket (SockAddr)
import           UnliftIO (MonadUnliftIO)
import qualified Data.ByteString.Base16 as B16
import Data.String.Conversions (cs)


import qualified Data.ByteString as BS

-- | Default ABCI app network settings.
defaultSettings :: ServerSettings
defaultSettings = serverSettings 26658 "127.0.0.1"

-- | Serve an ABCI application with custom 'ServerSettings'
serveAppWith
  :: (MonadIO m, MonadBaseControl IO m, MonadUnliftIO m)
  => ServerSettings -> (SockAddr -> m (App m)) -> m ()
serveAppWith cfg mkApp = runGeneralTCPServer cfg $ \appData -> do
  app <- mkApp (appSockAddr appData)
  runConduit (setupConduit app appData)

-- | Serve an ABCI application with default 'ServerSettings'
serveApp
  :: (MonadIO m, MonadBaseControl IO m, MonadUnliftIO m)
  => (SockAddr -> m (App m)) -> m ()
serveApp = serveAppWith defaultSettings

-- | Sets up the application wire pipeline.
setupConduit :: (MonadIO m, MonadUnliftIO m) => App m -> AppData -> ConduitT i o m ()
setupConduit app appData =
     appSource appData
  .| (awaitForever $ \a -> liftIO (putStrLn "Stage 1: bytes come in" >> putStrLn (cs . B16.encode $ a)) >> yield a)
  .| Wire.decodeLengthPrefixC
  .| (awaitForever $ \a -> liftIO (putStrLn "Stage 2: stripped the prefixes" >> print @(Either String String) (fmap (cs . B16.encode) $ a)) >> yield a)
  .| CL.map (join . fmap PL.decodeMessage)
  .| CL.mapM (respondWith app)
  .| (awaitForever $ \a -> liftIO (putStrLn "Stage 3: ran the handlers and got results" >> print a) >> yield a)
  .| addFlushMessageAndEncode
  .| combineWithLengthPrexif
  .| (awaitForever $ \a -> do
         liftIO (putStrLn "Stage 4: encoded the response")
         (yield a .| appSink appData)
         liftIO $ putStrLn ("Stage 5: sent bytes back: " ++ (cs . B16.encode $ a))
     )

-- TODO: figure out what's actually needed here...
addFlushMessageAndEncode :: (Monad m, MonadIO m) => ConduitT (ABCI.Response) (BS.ByteString, BS.ByteString) m ()
addFlushMessageAndEncode = awaitForever $ \resp ->
    -- NOTE: according to the docs there's supposed to be a distinction here but `abci-cli test` fails if you don't
    -- include a flush message every time \shrug
    if isAsynchronousResponse resp
      then yield (PL.encodeMessage resp, PL.encodeMessage flushMessage)
      else yield (PL.encodeMessage resp, PL.encodeMessage flushMessage)
  where
   flushMessage = toProtoResponse ResponseFlush

combineWithLengthPrexif :: (Monad m) => ConduitT (BS.ByteString, BS.ByteString) BS.ByteString m ()
combineWithLengthPrexif = awaitForever $ \(msg, flushMsg) -> yield
  (Wire.encodeLengthPrefix msg <> Wire.encodeLengthPrefix flushMsg)

-- | Wraps the ABCI application so it doesn't have to deal with the
--   "weakly-typed" raw 'Proto.Request' and 'Proto.Response's
respondWith
  :: (Monad m, MonadIO m)
  => App m -> Either String ABCI.Request -> m ABCI.Response
respondWith _ (Left err) = do
  liftIO $ putStrLn ("Invalid request: " <> fromString err)
  respondErr ("Invalid request: " <> fromString err)
respondWith (App app) (Right req) = do
  withProtoRequest req (maybe (respondErr "Invalid request")
                              (fmap toProtoResponse . app))


-- | "Throws" an ABCI raw 'ResponseException'
respondErr :: (Monad m, MonadIO m) => Text -> m ABCI.Response
respondErr err = do
  liftIO $ print err
  return (toProtoResponse (ResponseException err))
