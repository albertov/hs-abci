{-# LANGUAGE DataKinds #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE StandaloneDeriving #-}

module Network.ABCI.Types (

-- * Type-safe 'Request' / 'Response' GADTs

  Request (..)
, Response (..)

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

, Proto.BlockID (..)
, Proto.CodeType (..)
, Proto.Header (..)
, Proto.PartSetHeader (..)
, Proto.Validator (..)

) where

import qualified Proto.Network.ABCI.Types as Proto

import           Data.ByteString (ByteString)
import           Data.Default (Default(def))
import           Data.Int (Int64)
import           Data.Text (Text)
import           Data.Word (Word64)
import           Lens.Micro

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

  RequestInfo :: Request Info

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
    , requestQuery'height :: !Word64
    , requestQuery'prove  :: !Bool
    } -> Request Query

  RequestInitChain ::
    { requestInitChain'validators :: ![Proto.Validator]
    } -> Request InitChain

  RequestBeginBlock ::
    { requestInitBlock'hash   :: !ByteString
    , requestInitBlock'header :: !(Maybe Proto.Header)
    } -> Request BeginBlock

  RequestEndBlock ::
    { requestEndBlock'height :: !Word64
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
    , responseInfo'lastBlockHeight  :: !Word64
    , responseInfo'lastBlockAppHash :: !ByteString
    } -> Response Info

  ResponseSetOption ::
    { responseSetOption'log :: !Text
    } -> Response SetOption

  ResponseDeliverTx ::
    { responseDeliverTx'code :: !Proto.CodeType
    , responseDeliverTx'data :: !ByteString
    , responseDeliverTx'log  :: !Text
    } -> Response DeliverTx

  ResponseCheckTx ::
    { responseCheckTx'code :: !Proto.CodeType
    , responseCheckTx'data :: !ByteString
    , responseCheckTx'log  :: !Text
    } -> Response CheckTx

  ResponseCommit ::
    { responseCommit'code :: !Proto.CodeType
    , responseCommit'data :: !ByteString
    , responseCommit'log  :: !Text
    } -> Response Commit

  ResponseQuery ::
    { responseQuery'code   :: !Proto.CodeType
    , responseQuery'index  :: !Int64
    , responseQuery'key    :: !ByteString
    , responseQuery'value  :: !ByteString
    , responseQuery'proof  :: !ByteString
    , responseQuery'height :: !Word64
    , responseQuery'log    :: !Text
    } -> Response Query

  ResponseInitChain :: Response InitChain

  ResponseBeginBlock :: Response BeginBlock

  ResponseEndBlock ::
    { responseEndBlock'diffs :: ![Proto.Validator]
    } -> Response EndBlock

deriving instance Show (Response t)

instance Default (Response Flush) where
  def = ResponseFlush

instance Default (Response Info) where
  def = ResponseInfo "" "" 0 ""

instance Default (Response SetOption) where
  def = ResponseSetOption ""

instance Default (Response Query) where
  def = ResponseQuery def 0 "" "" "" 0 ""


-- | Translates type-safe 'Response' GADT to the unsafe
--   auto-generated 'Proto.Response'
toProtoResponse :: Response t -> Proto.Response
toProtoResponse (ResponseException error') =
  def & Proto.exception .~ Proto.ResponseException error'
toProtoResponse (ResponseEcho msg) =
  def & Proto.echo .~ Proto.ResponseEcho msg
toProtoResponse ResponseFlush =
  def & Proto.flush .~ Proto.ResponseFlush
toProtoResponse (ResponseInfo d v h ah) =
  def & Proto.info .~ Proto.ResponseInfo d v h ah
toProtoResponse (ResponseSetOption log') =
  def & Proto.setOption .~ Proto.ResponseSetOption log'
toProtoResponse (ResponseDeliverTx code data'' log') =
  def & Proto.deliverTx .~ Proto.ResponseDeliverTx code data'' log'
toProtoResponse (ResponseCheckTx code data'' log') =
  def & Proto.checkTx .~ Proto.ResponseCheckTx code data'' log'
toProtoResponse (ResponseCommit code data'' log') =
  def & Proto.commit .~ Proto.ResponseCommit code data'' log'
toProtoResponse (ResponseQuery c i k v p h l) =
  def & Proto.query .~ Proto.ResponseQuery c i k v p h l
toProtoResponse ResponseInitChain =
  def & Proto.initChain .~ Proto.ResponseInitChain
toProtoResponse ResponseBeginBlock =
  def & Proto.beginBlock .~ Proto.ResponseBeginBlock
toProtoResponse (ResponseEndBlock vs) =
  def & Proto.endBlock .~ Proto.ResponseEndBlock vs


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
  | Just (Proto.RequestEcho msg)          <- r^.Proto.maybe'echo       = f (Just (RequestEcho msg))
  | Just (Proto.RequestFlush)             <- r^.Proto.maybe'flush      = f (Just RequestFlush)
  | Just (Proto.RequestInfo)              <- r^.Proto.maybe'info       = f (Just RequestInfo)
  | Just (Proto.RequestSetOption k v)     <- r^.Proto.maybe'setOption  = f (Just (RequestSetOption k v))
  | Just (Proto.RequestDeliverTx tx)      <- r^.Proto.maybe'deliverTx  = f (Just (RequestDeliverTx tx))
  | Just (Proto.RequestCheckTx tx)        <- r^.Proto.maybe'checkTx    = f (Just (RequestCheckTx tx))
  | Just (Proto.RequestCommit)            <- r^.Proto.maybe'commit     = f (Just RequestCommit)
  | Just (Proto.RequestQuery d p h pr)    <- r^.Proto.maybe'query      = f (Just (RequestQuery d p h pr))
  | Just (Proto.RequestInitChain vs)      <- r^.Proto.maybe'initChain  = f (Just (RequestInitChain vs))
  | Just (Proto.RequestBeginBlock ah hdr) <- r^.Proto.maybe'beginBlock = f (Just (RequestBeginBlock ah hdr))
  | Just (Proto.RequestEndBlock h)        <- r^.Proto.maybe'endBlock   = f (Just (RequestEndBlock h))
  | otherwise                                                          = f Nothing
