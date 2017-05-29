{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE RankNTypes #-}
module Network.ABCI (
  serveApp
, serveAppWith

-- * Re-exports
, serverSettings
, module ReExport
) where

import qualified Proto.Network.ABCI.Types as ABCI
import           Network.ABCI.Internal.Wire as Wire
import           Network.ABCI.Internal.Types ( App(..)
                                             , withProtoRequest
                                             , toProtoResponse)
import           Network.ABCI.Internal.Types as ReExport hiding (
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
  =$= Wire.decodeLengthPrefixC
  =$= CL.map (join . fmap PL.decodeMessage)
  =$= CL.mapM (respondWith app)
  =$= CL.map PL.encodeMessage
  =$= Wire.encodeLengthPrefixC
  =$= appSink appData


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
