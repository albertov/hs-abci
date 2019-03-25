{-# LANGUAGE FlexibleContexts    #-}
{-# LANGUAGE OverloadedStrings   #-}
{-# LANGUAGE RankNTypes          #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeApplications    #-}
module Network.ABCI (
  serveApp
, serveAppWith
, defaultSettings
-- * Re-exports
, serverSettings
, module ReExport
) where


import           Control.Monad.IO.Class      (MonadIO (..))
import           Control.Monad.Trans.Control (MonadBaseControl)
import qualified Data.ByteString             as BS
import           Data.Conduit                (ConduitT, awaitForever,
                                              runConduit, yield, (.|))
import qualified Data.Conduit.List           as CL
import           Data.Conduit.Network        (AppData, ServerSettings, appSink,
                                              appSockAddr, appSource,
                                              runGeneralTCPServer,
                                              serverSettings)
import           Data.Default                (def)
import           Data.Monoid                 ((<>))
import qualified Data.ProtoLens.Encoding     as PL
import           Data.String                 (fromString)
import           Data.Text                   (Text)
import           Data.Traversable            (forM, traverse)
import           Network.ABCI.Internal.Wire  as Wire
import           Network.ABCI.Types          (App (..),
                                              Response (ResponseFlush),
                                              toProtoResponse, withProtoRequest)
import           Network.ABCI.Types          as ReExport hiding
                                                          (toProtoResponse,
                                                          withProtoRequest)
import           Network.Socket              (SockAddr)
import qualified Proto.Types                 as ABCI
import           UnliftIO                    (MonadUnliftIO)

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
  .| Wire.decodeLengthPrefixC
  .| CL.map (traverse PL.decodeMessage =<<)
  .| CL.mapM (respondWith app)
  .| encodeMessages
  .| appSink appData

encodeMessages :: (Monad m, MonadIO m) => ConduitT [ABCI.Response] BS.ByteString m ()
encodeMessages = awaitForever $ \resps ->
  yield $ foldMap (Wire.encodeLengthPrefix . PL.encodeMessage)  resps

-- | Wraps the ABCI application so it doesn't have to deal with the
--   "weakly-typed" raw 'Proto.Request' and 'Proto.Response's
respondWith
  :: (Monad m, MonadIO m)
  => App m -> Either String [ABCI.Request] -> m [ABCI.Response]
respondWith _ (Left err) = pure <$> respondErr ("Invalid request: " <> fromString err)
respondWith (App app) (Right reqs) = forM reqs $ \req -> do
  withProtoRequest req (maybe (respondErr "Invalid request")
                              (fmap toProtoResponse . app))


-- | "Throws" an ABCI raw 'ResponseException'
respondErr :: (Monad m, MonadIO m) => Text -> m ABCI.Response
respondErr err = return (toProtoResponse (ResponseException err))
