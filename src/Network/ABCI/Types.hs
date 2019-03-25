{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE GADTs              #-}
{-# LANGUAGE KindSignatures     #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RankNTypes         #-}
{-# LANGUAGE StandaloneDeriving #-}

module Network.ABCI.Types (

-- * Type-safe 'Request' / 'Response' GADTs

  Request (..)
, Response (..)

-- * Code types

, CodeType(..)
, codeTypeOK
, codeTypeEncodingError
, codeTypeBadNonce
, codeTypeUnauthorized
, codeTypeBadOption

-- * An ABCI application type

, App (..)


-- * 'MsgType' kind and associated types. Used to tag
--   with a phantom type the 'Request' and associated 'Response'
--   types

, MsgType
, Echo
, Flush
, Info
, SetOption
, DeliverTx
, CheckTx
, Commit
, Query
, InitChain
, BeginBlock
, EndBlock

-- * protobuf/GADT 'Request'/'Response' conversion

, toProtoResponse
, withProtoRequest

-- * Re-exports
, def
-- * Protobuf safe types re-exports

, Proto.BlockID ()
, Proto.ConsensusParams
, Proto.Header ()
, Proto.PartSetHeader ()
, Proto.Validator ()
) where

import qualified Proto.Types                                               as Proto
import qualified Proto.Types_Fields                                        as Proto
import           Proto.Vendored.Tendermint.Tendermint.Crypto.Merkle.Merkle (Proof)
import           Proto.Vendored.Tendermint.Tendermint.Libs.Common.Types    (KVPair)

import           Data.ByteString                                           (ByteString)
import           Data.Default                                              (Default (def))
import           Data.Int                                                  (Int64)
import           Data.ProtoLens                                            (defMessage)
import           Data.ProtoLens.Prism                                      (( # ))
import           Data.Text                                                 (Text)
import           Data.Word                                                 (Word32)
import           Lens.Micro

import           Debug.Trace

-- | An 'App' is a monadic function from 'Request' to 'Response'.
--   We tag both with the 'MsgType' to enforce at the type-level that
--   the 'Request'/'Response' types match
newtype App m = App (forall (t :: MsgType). Request t -> m (Response t))

-- | Type-level "tags" representing the type of 'Request'/'Response' pairs
data MsgType
  = Echo
  | Flush
  | Info
  | SetOption
  | DeliverTx
  | CheckTx
  | Commit
  | Query
  | InitChain
  | BeginBlock
  | EndBlock

-- We create type synonyms for the promoted constructors so our users don't
-- need to enable the 'DataKinds' GHC extension

type Echo       = 'Echo
type Flush      = 'Flush
type Info       = 'Info
type SetOption  = 'SetOption
type DeliverTx  = 'DeliverTx
type CheckTx    = 'CheckTx
type Commit     = 'Commit
type Query      = 'Query
type InitChain  = 'InitChain
type BeginBlock = 'BeginBlock
type EndBlock   = 'EndBlock

-- | A type-safe 'Request' GADT tagged with the 'MsgType'
data Request (t :: MsgType) where

  RequestEcho ::
    { requestEcho'message :: !Text
    } -> Request Echo

  RequestFlush :: Request Flush

  RequestInfo :: {
    requestInfo'version :: !Text
  } -> Request Info

  RequestSetOption  ::
    { requestSetOption'key   :: !Text
    , requestSetOption'value :: !Text
    } -> Request SetOption

  RequestDeliverTx ::
    { requestDeliverTx'tx :: !ByteString
    } -> Request DeliverTx

  RequestCheckTx ::
    { requestCheckTx'tx :: !ByteString
    } -> Request CheckTx

  RequestCommit :: Request Commit

  RequestQuery  ::
    { requestQuery'data   :: !ByteString
    , requestQuery'path   :: !Text
    , requestQuery'height :: !Int64
    , requestQuery'prove  :: !Bool
    } -> Request Query

  RequestInitChain ::
    { requestInitChain'validators :: ![Proto.ValidatorUpdate]
    , requestInitChain'consensusParams :: !(Maybe Proto.ConsensusParams)
    } -> Request InitChain

  RequestBeginBlock ::
    { requestInitBlock'hash   :: !ByteString
    , requestInitBlock'header :: !(Maybe Proto.Header)
   -- , requestInitBlock'absent_validators :: ![Int32]
    , requestInitBlock'byzantine_validators :: ![Proto.Evidence]
    } -> Request BeginBlock

  RequestEndBlock ::
    { requestEndBlock'height :: !Int64
    } -> Request EndBlock

deriving instance Show (Request t)

-- | A type-safe 'Response' GADT tagged with the 'MsgType'
data Response (t :: MsgType) where

  ResponseException ::
    { responseException'error :: !Text
    } -> Response t

  ResponseEcho ::
    { responseEcho'message :: !Text
    } -> Response Echo

  ResponseFlush :: Response Flush

  ResponseInfo ::
    { responseInfo'data             :: !Text
    , responseInfo'version          :: !Text
    , responseInfo'lastBlockHeight  :: !Int64
    , responseInfo'lastBlockAppHash :: !ByteString
    } -> Response Info

  ResponseSetOption ::
    { responseSetOption'code :: !CodeType
    , responseSetOption'log  :: !Text
    } -> Response SetOption

  ResponseDeliverTx ::
    { responseDeliverTx'code :: !CodeType
    , responseDeliverTx'data :: !ByteString
    , responseDeliverTx'log  :: !Text
    , responseDeliverTx'tags :: ![KVPair]
    } -> Response DeliverTx

  ResponseCheckTx ::
    { responseCheckTx'code :: !CodeType
    , responseCheckTx'data :: !ByteString
    , responseCheckTx'log  :: !Text
    , responseCheckTx'gas  :: !Int64
    , responseCheckTx'fee  :: !Int64
    } -> Response CheckTx

  ResponseCommit ::
    { responseCommit'data :: !ByteString
    } -> Response Commit

  ResponseQuery ::
    { responseQuery'code   :: !CodeType
    , responseQuery'index  :: !Int64
    , responseQuery'key    :: !ByteString
    , responseQuery'value  :: !ByteString
    , responseQuery'proof  :: !Proof
    , responseQuery'height :: !Int64
    , responseQuery'log    :: !Text
    } -> Response Query

  ResponseInitChain ::
    { responseInitChain'Validators :: [Proto.ValidatorUpdate]
    , responseInitChain'ConsensusParams :: Maybe Proto.ConsensusParams
    } -> Response InitChain

  ResponseBeginBlock :: Response BeginBlock

  ResponseEndBlock ::
    { responseEndBlock'diffs :: ![Proto.ValidatorUpdate]
    , responseEndBlock'consensus :: !(Maybe Proto.ConsensusParams)
    } -> Response EndBlock

deriving instance Show (Response t)

instance Default (Response Flush) where
  def = ResponseFlush

instance Default (Response Info) where
  def = ResponseInfo "" "" 0 ""

instance Default (Response SetOption) where
  def = ResponseSetOption def ""

instance Default (Response Query) where
  def = ResponseQuery def def "" "" defMessage 0 ""

instance Default (Response InitChain) where
  def = ResponseInitChain def def

instance Default (Response BeginBlock) where
  def = ResponseBeginBlock

instance Default (Response EndBlock) where
  def = ResponseEndBlock [] Nothing

------------------------------------
-- code types

newtype CodeType = CodeType { unCodeType :: Word32
  } deriving (Show, Eq, Ord)

instance Default CodeType where
  def = CodeType 0


codeTypeOK, codeTypeEncodingError, codeTypeBadNonce, codeTypeUnauthorized, codeTypeBadOption :: CodeType

codeTypeOK            = CodeType 0
codeTypeEncodingError = CodeType 1
codeTypeBadNonce      = CodeType 2
codeTypeUnauthorized  = CodeType 3
codeTypeBadOption     = CodeType 101


{- from file: https://github.com/tendermint/abci/blob/master/example/code/code.go
  CodeTypeOK            uint32 = 0
  CodeTypeEncodingError uint32 = 1
  CodeTypeBadNonce      uint32 = 2
  CodeTypeUnauthorized  uint32 = 3
  CodeTypeBadOption uint32 = 101
-}

------------------------------------

-- | Translates type-safe 'Response' GADT to the unsafe
--   auto-generated 'Proto.Response'
toProtoResponse :: Response t -> Proto.Response
toProtoResponse (ResponseException error') =
  defMessage & Proto.maybe'value ?~ Proto._Response'Exception # (defMessage & Proto.error .~ error')
toProtoResponse (ResponseEcho msg) =
  defMessage & Proto.maybe'value ?~ Proto._Response'Echo # (defMessage & Proto.message .~ msg)
toProtoResponse ResponseFlush =
  defMessage & Proto.maybe'value ?~ Proto._Response'Flush # defMessage
toProtoResponse (ResponseInfo d v h ah) =
  defMessage & Proto.maybe'value ?~ Proto._Response'Info # (defMessage & Proto.data' .~ d
                                                                       & Proto.version .~ v
                                                                       & Proto.lastBlockHeight .~ h
                                                                       & Proto.lastBlockAppHash .~ ah)
toProtoResponse (ResponseSetOption (CodeType code') log') =
  defMessage & Proto.maybe'value ?~ Proto._Response'SetOption # (defMessage & Proto.code .~ code'
                                                                            & Proto.log .~ log')
toProtoResponse (ResponseDeliverTx (CodeType code) data'' log' tags') =
  defMessage & Proto.maybe'value ?~ Proto._Response'DeliverTx # (defMessage & Proto.code .~ code
                                                                            & Proto.data' .~ data''
                                                                            & Proto.log .~ log'
                                                                            & Proto.tags .~ tags')
toProtoResponse (ResponseCheckTx (CodeType code) data'' log' _ _) =
  defMessage & Proto.maybe'value ?~ Proto._Response'CheckTx # (defMessage & Proto.code .~ code
                                                                          & Proto.data' .~ data''
                                                                          & Proto.log .~ log')
toProtoResponse (ResponseCommit data'') =
  defMessage & Proto.maybe'value ?~ Proto._Response'Commit # (defMessage & Proto.data' .~ data'')
toProtoResponse (ResponseQuery (CodeType c) i k v p h l) =
  defMessage & Proto.maybe'value ?~ Proto._Response'Query # (defMessage & Proto.code .~ c
                                                                        & Proto.index .~ i
                                                                        & Proto.key .~ k
                                                                        & Proto.value .~ v
                                                                        & Proto.proof .~ p
                                                                        & Proto.height .~ h
                                                                        & Proto.log .~ l)
toProtoResponse (ResponseInitChain vs cps) =
  defMessage & Proto.maybe'value ?~ Proto._Response'InitChain # (defMessage & Proto.validators .~ vs
                                                                            & Proto.maybe'consensusParams .~ cps
                                                                )
toProtoResponse ResponseBeginBlock =
  defMessage & Proto.maybe'value ?~ Proto._Response'BeginBlock # defMessage
toProtoResponse (ResponseEndBlock vs consensus) =
  defMessage & Proto.maybe'value ?~ Proto._Response'EndBlock # (defMessage & Proto.validatorUpdates .~ vs
                                                                           & Proto.maybe'consensusParamUpdates .~ consensus)


-- | Translates the unsafe auto-generated 'Proto.Request' to a type-safe
--   'Request GADT so users can safely pattern-match on it
--   (ie: the compiler will warn if any case is not covered)
--
--   Note that we need to use a rank-n-types continuation since the
--   'Request' GADT carries a phantom-type 'MsgType' "tag" and Haskell
--   does not allow a polymorphic return type on a "normal" function
--   (only those belonging to a type classes)
withProtoRequest
  :: Proto.Request
  -> (forall (t :: MsgType). Maybe (Request t) -> a)
  -> a
withProtoRequest r f
  | Just echo  <- r^.Proto.maybe'echo            = f (Just (RequestEcho $ echo ^. Proto.message))
  | Just info  <- r^.Proto.maybe'info            = f (Just (RequestInfo $ info ^. Proto.version))
  | Just setOption <- r^.Proto.maybe'setOption   = f (Just (RequestSetOption (setOption ^. Proto.key) (setOption ^. Proto.value)))
  | Just deliverTx <- r^.Proto.maybe'deliverTx   = f (Just (RequestDeliverTx $ deliverTx ^. Proto.tx))
  | Just requestTx <- r^.Proto.maybe'checkTx     = f (Just (RequestCheckTx $ requestTx ^. Proto.tx))
  | Just query <- r^.Proto.maybe'query           = f (Just (RequestQuery (query ^. Proto.data') (query ^. Proto.path) (query ^. Proto.height) (query ^. Proto.prove)))
  | Just initChain <- r^.Proto.maybe'initChain   = f (Just (RequestInitChain (initChain ^. Proto.validators) (initChain ^. Proto.maybe'consensusParams)))
  | Just beginBlock <- r^.Proto.maybe'beginBlock = f (Just (RequestBeginBlock (beginBlock ^. Proto.hash) (beginBlock ^. Proto.maybe'header) (beginBlock ^. Proto.byzantineValidators)))
  | Just endBlock <- r^.Proto.maybe'endBlock     = f (Just (RequestEndBlock $ endBlock ^. Proto.height))
  | Just _ <- r^.Proto.maybe'commit         = f (Just RequestCommit)
  | Just _ <- r^.Proto.maybe'flush               = f (Just RequestFlush)
  | otherwise                                    = traceShow r $ f Nothing



