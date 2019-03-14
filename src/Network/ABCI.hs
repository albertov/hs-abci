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
                                    , withProtoRequest
                                    , toProtoResponse)
import           Network.ABCI.Types as ReExport hiding (
                    withProtoRequest
                  , toProtoResponse)

import           Control.Monad
import           Control.Monad.IO.Class (MonadIO(..))
import           Control.Monad.Trans.Control (MonadBaseControl)
import           Data.Conduit (ConduitT, runConduit, (.|), await, awaitForever, yield, catchC)
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
import Data.ByteString.Base16 as B16
import Data.String.Conversions (cs)

-- | Default ABCI app network settings.
defaultSettings :: ServerSettings
defaultSettings = serverSettings 26658 "127.0.0.1"

-- | Serve an ABCI application with custom 'ServerSettings'
serveAppWith
  :: (MonadIO m, MonadBaseControl IO m, MonadUnliftIO m)
  => ServerSettings -> (SockAddr -> m (App m)) -> m ()
serveAppWith cfg mkApp = runGeneralTCPServer cfg $ \appData -> do
  app <- mkApp (appSockAddr appData)
  liftIO $ print "runConduit"
  runConduit (setupConduit app appData)
  liftIO $ print "hello?"

-- | Serve an ABCI application with default 'ServerSettings'
serveApp
  :: (MonadIO m, MonadBaseControl IO m, MonadUnliftIO m)
  => (SockAddr -> m (App m)) -> m ()
serveApp = serveAppWith defaultSettings

-- | Sets up the application wire pipeline.
setupConduit :: (MonadIO m, MonadUnliftIO m) => App m -> AppData -> ConduitT i o m ()
setupConduit app appData =
     appSource appData
  .| (awaitForever $ \mInput -> liftIO (print "Stage 1: bytes come in" >> putStrLn (cs . B16.encode $ mInput)) >> yield mInput)
  .| Wire.decodeLengthPrefixC
  .| (awaitForever $ \mInput -> liftIO (print "Stage 2: stripped the prefixes" >> print @(Either String String) (fmap (cs . B16.encode) $ mInput)) >> yield mInput)
  .| CL.map (join . fmap PL.decodeMessage)
  .| CL.mapM (respondWith app)
  .| (awaitForever $ \mInput -> liftIO (print "Stage 3: ran the handlers and got results" >> print mInput) >> yield mInput)
  .| CL.map PL.encodeMessage
  .| Wire.encodeLengthPrefixC
  .| (awaitForever $ \mInput -> liftIO (print "Stage 4: encoded the response" >> putStrLn (cs . B16.encode $ mInput)) >> yield (mInput))
  .| appSink appData
  .| (await >>= \_ -> liftIO (print "Stage 5: sent bytes back"))


-- | Wraps the ABCI application so it doesn't have to deal with the
--   "weakly-typed" raw 'Proto.Request' and 'Proto.Response's
respondWith
  :: (Monad m, MonadIO m)
  => App m -> Either String ABCI.Request -> m ABCI.Response
respondWith _ (Left err) = do
  liftIO $ print ("Invalid request: " <> fromString err)
  respondErr ("Invalid request: " <> fromString err)
respondWith (App app) (Right req) = do
  withProtoRequest req (maybe (respondErr "Invalid request")
                              (fmap toProtoResponse . app))


-- | "Throws" an ABCI raw 'ResponseException'
respondErr :: (Monad m, MonadIO m) => Text -> m ABCI.Response
respondErr err = do
  liftIO $ print err
  return (toProtoResponse (ResponseException err))
