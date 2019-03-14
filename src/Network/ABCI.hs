{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE FlexibleContexts #-}
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
import Data.Maybe (fromJust)

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
setupConduit :: MonadIO m => App m -> AppData -> ConduitT i o m ()
setupConduit app appData =
     appSource appData
  .| (awaitForever $ \mInput -> liftIO (print "1" >> print mInput) >> yield (mInput))
  .| Wire.decodeLengthPrefixC
  .| (awaitForever $ \mInput -> liftIO (print "2" >> print mInput) >> yield (mInput))
  .| CL.map (join . fmap PL.decodeMessage)
  .| CL.mapM (respondWith app)
  .| (awaitForever $ \mInput -> liftIO (print "3" >> print mInput) >> yield (mInput))
  .| CL.map PL.encodeMessage
  .| Wire.encodeLengthPrefixC
  .| (awaitForever $ \mInput -> liftIO (print "4" >> print mInput) >> yield (mInput))
  .| appSink appData
  .| (awaitForever $ \mInput -> liftIO (print "5"))


-- | Wraps the ABCI application so it doesn't have to deal with the
--   "weakly-typed" raw 'Proto.Request' and 'Proto.Response's
respondWith
  :: (Monad m, MonadIO m)
  => App m -> Either String ABCI.Request -> m ABCI.Response
respondWith _ (Left err) = do
  liftIO $ print ("Invalid request: " <> fromString err)
  respondErr ("Invalid request: " <> fromString err)
respondWith (App app) (Right req) = do
  liftIO $ print "req"
  liftIO $ print (show req)
  withProtoRequest req (maybe (respondErr "Invalid request")
                              (fmap toProtoResponse . app))


-- | "Throws" an ABCI raw 'ResponseException'
respondErr :: (Monad m, MonadIO m) => Text -> m ABCI.Response
respondErr err = do
  liftIO $ print err
  return (toProtoResponse (ResponseException err))
