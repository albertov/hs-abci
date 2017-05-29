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

import qualified Proto.Network.ABCI.Types as ABCI
import           Network.ABCI.Internal.Wire as Wire
import           Network.ABCI.Types ( App(..)
                                    , withProtoRequest
                                    , toProtoResponse)
import           Network.ABCI.Types as ReExport hiding (
                    withProtoRequest
                  , toProtoResponse)

import           Control.Monad
import           Control.Monad.IO.Class (MonadIO)
import           Control.Monad.Trans.Control (MonadBaseControl)
import           Data.Conduit (Conduit, runConduit, (=$=))
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
import           Lens.Micro
import           Network.Socket (SockAddr)

-- | Default ABCI app network settings.
defaultSettings :: ServerSettings
defaultSettings = serverSettings 46658 "127.0.0.1"

-- | Serve an ABCI application with custom 'ServerSettings'
serveAppWith
  :: (MonadIO m, MonadBaseControl IO m)
  => ServerSettings -> (SockAddr -> m (App m)) -> m ()
serveAppWith cfg mkApp = runGeneralTCPServer cfg $ \appData -> do
  app <- mkApp (appSockAddr appData)
  runConduit (setupConduit app appData)

-- | Serve an ABCI application with default 'ServerSettings'
serveApp
  :: (MonadIO m, MonadBaseControl IO m)
  => (SockAddr -> m (App m)) -> m ()
serveApp = serveAppWith defaultSettings

-- | Sets up the application wire pipeline.
setupConduit :: MonadIO m => App m -> AppData -> Conduit i m o
setupConduit app appData =
      appSource appData
  =$= Wire.decodeLengthPrefixC
  =$= CL.map (join . fmap PL.decodeMessage)
  =$= CL.mapM (respondWith app)
  =$= CL.map PL.encodeMessage
  =$= Wire.encodeLengthPrefixC
  =$= appSink appData


-- | Wraps the ABCI application so it doesn't have to deal with the
--   "weakly-typed" raw 'Proto.Request' and 'Proto.Response's
respondWith
  :: Monad m
  => App m -> Either String ABCI.Request -> m ABCI.Response
respondWith _ (Left err) = respondErr ("Invalid request: " <> fromString err)
respondWith (App app) (Right req) =
  withProtoRequest req (maybe (respondErr "Invalid request")
                              (fmap toProtoResponse . app))

-- | "Throws" an ABCI raw 'ResponseException'
respondErr :: Monad m => Text -> m ABCI.Response
respondErr err =
  return (def & ABCI.exception .~ ABCI.ResponseException err)
