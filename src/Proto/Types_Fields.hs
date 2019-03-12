{- This file was auto-generated from types.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies,
  UndecidableInstances, GeneralizedNewtypeDeriving,
  MultiParamTypeClasses, FlexibleContexts, FlexibleInstances,
  PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds,
  BangPatterns, TypeApplications #-}
{-# OPTIONS_GHC -fno-warn-unused-imports#-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports#-}
module Proto.Types_Fields where
import qualified Data.ProtoLens.Runtime.Prelude as Prelude
import qualified Data.ProtoLens.Runtime.Data.Int as Data.Int
import qualified Data.ProtoLens.Runtime.Data.Monoid as Data.Monoid
import qualified Data.ProtoLens.Runtime.Data.Word as Data.Word
import qualified Data.ProtoLens.Runtime.Data.ProtoLens
       as Data.ProtoLens
import qualified
       Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Bytes
       as Data.ProtoLens.Encoding.Bytes
import qualified
       Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Growing
       as Data.ProtoLens.Encoding.Growing
import qualified
       Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Parser.Unsafe
       as Data.ProtoLens.Encoding.Parser.Unsafe
import qualified
       Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Wire
       as Data.ProtoLens.Encoding.Wire
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Field
       as Data.ProtoLens.Field
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Message.Enum
       as Data.ProtoLens.Message.Enum
import qualified
       Data.ProtoLens.Runtime.Data.ProtoLens.Service.Types
       as Data.ProtoLens.Service.Types
import qualified Data.ProtoLens.Runtime.Lens.Family2
       as Lens.Family2
import qualified Data.ProtoLens.Runtime.Lens.Family2.Unchecked
       as Lens.Family2.Unchecked
import qualified Data.ProtoLens.Runtime.Data.Text as Data.Text
import qualified Data.ProtoLens.Runtime.Data.Map as Data.Map
import qualified Data.ProtoLens.Runtime.Data.ByteString
       as Data.ByteString
import qualified Data.ProtoLens.Runtime.Data.ByteString.Char8
       as Data.ByteString.Char8
import qualified Data.ProtoLens.Runtime.Data.Text.Encoding
       as Data.Text.Encoding
import qualified Data.ProtoLens.Runtime.Data.Vector as Data.Vector
import qualified Data.ProtoLens.Runtime.Data.Vector.Generic
       as Data.Vector.Generic
import qualified Data.ProtoLens.Runtime.Data.Vector.Unboxed
       as Data.Vector.Unboxed
import qualified Data.ProtoLens.Runtime.Text.Read as Text.Read
import qualified Proto.Vendored.Gogo.Protobuf.Gogoproto.Gogo
import qualified Proto.Vendored.Google.Protobuf.Timestamp
import qualified
       Proto.Vendored.Tendermint.Tendermint.Crypto.Merkle.Merkle
import qualified
       Proto.Vendored.Tendermint.Tendermint.Libs.Common.Types

address ::
        forall f s a .
          (Prelude.Functor f, Data.ProtoLens.Field.HasField s "address" a) =>
          Lens.Family2.LensLike' f s a
address = Data.ProtoLens.Field.field @"address"
app ::
    forall f s a .
      (Prelude.Functor f, Data.ProtoLens.Field.HasField s "app" a) =>
      Lens.Family2.LensLike' f s a
app = Data.ProtoLens.Field.field @"app"
appHash ::
        forall f s a .
          (Prelude.Functor f, Data.ProtoLens.Field.HasField s "appHash" a) =>
          Lens.Family2.LensLike' f s a
appHash = Data.ProtoLens.Field.field @"appHash"
appStateBytes ::
              forall f s a .
                (Prelude.Functor f,
                 Data.ProtoLens.Field.HasField s "appStateBytes" a) =>
                Lens.Family2.LensLike' f s a
appStateBytes = Data.ProtoLens.Field.field @"appStateBytes"
appVersion ::
           forall f s a .
             (Prelude.Functor f,
              Data.ProtoLens.Field.HasField s "appVersion" a) =>
             Lens.Family2.LensLike' f s a
appVersion = Data.ProtoLens.Field.field @"appVersion"
beginBlock ::
           forall f s a .
             (Prelude.Functor f,
              Data.ProtoLens.Field.HasField s "beginBlock" a) =>
             Lens.Family2.LensLike' f s a
beginBlock = Data.ProtoLens.Field.field @"beginBlock"
block ::
      forall f s a .
        (Prelude.Functor f, Data.ProtoLens.Field.HasField s "block" a) =>
        Lens.Family2.LensLike' f s a
block = Data.ProtoLens.Field.field @"block"
blockSize ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "blockSize" a) =>
            Lens.Family2.LensLike' f s a
blockSize = Data.ProtoLens.Field.field @"blockSize"
blockVersion ::
             forall f s a .
               (Prelude.Functor f,
                Data.ProtoLens.Field.HasField s "blockVersion" a) =>
               Lens.Family2.LensLike' f s a
blockVersion = Data.ProtoLens.Field.field @"blockVersion"
byzantineValidators ::
                    forall f s a .
                      (Prelude.Functor f,
                       Data.ProtoLens.Field.HasField s "byzantineValidators" a) =>
                      Lens.Family2.LensLike' f s a
byzantineValidators
  = Data.ProtoLens.Field.field @"byzantineValidators"
chainId ::
        forall f s a .
          (Prelude.Functor f, Data.ProtoLens.Field.HasField s "chainId" a) =>
          Lens.Family2.LensLike' f s a
chainId = Data.ProtoLens.Field.field @"chainId"
checkTx ::
        forall f s a .
          (Prelude.Functor f, Data.ProtoLens.Field.HasField s "checkTx" a) =>
          Lens.Family2.LensLike' f s a
checkTx = Data.ProtoLens.Field.field @"checkTx"
code ::
     forall f s a .
       (Prelude.Functor f, Data.ProtoLens.Field.HasField s "code" a) =>
       Lens.Family2.LensLike' f s a
code = Data.ProtoLens.Field.field @"code"
codespace ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "codespace" a) =>
            Lens.Family2.LensLike' f s a
codespace = Data.ProtoLens.Field.field @"codespace"
commit ::
       forall f s a .
         (Prelude.Functor f, Data.ProtoLens.Field.HasField s "commit" a) =>
         Lens.Family2.LensLike' f s a
commit = Data.ProtoLens.Field.field @"commit"
consensusHash ::
              forall f s a .
                (Prelude.Functor f,
                 Data.ProtoLens.Field.HasField s "consensusHash" a) =>
                Lens.Family2.LensLike' f s a
consensusHash = Data.ProtoLens.Field.field @"consensusHash"
consensusParamUpdates ::
                      forall f s a .
                        (Prelude.Functor f,
                         Data.ProtoLens.Field.HasField s "consensusParamUpdates" a) =>
                        Lens.Family2.LensLike' f s a
consensusParamUpdates
  = Data.ProtoLens.Field.field @"consensusParamUpdates"
consensusParams ::
                forall f s a .
                  (Prelude.Functor f,
                   Data.ProtoLens.Field.HasField s "consensusParams" a) =>
                  Lens.Family2.LensLike' f s a
consensusParams = Data.ProtoLens.Field.field @"consensusParams"
data' ::
      forall f s a .
        (Prelude.Functor f, Data.ProtoLens.Field.HasField s "data'" a) =>
        Lens.Family2.LensLike' f s a
data' = Data.ProtoLens.Field.field @"data'"
dataHash ::
         forall f s a .
           (Prelude.Functor f,
            Data.ProtoLens.Field.HasField s "dataHash" a) =>
           Lens.Family2.LensLike' f s a
dataHash = Data.ProtoLens.Field.field @"dataHash"
deliverTx ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "deliverTx" a) =>
            Lens.Family2.LensLike' f s a
deliverTx = Data.ProtoLens.Field.field @"deliverTx"
echo ::
     forall f s a .
       (Prelude.Functor f, Data.ProtoLens.Field.HasField s "echo" a) =>
       Lens.Family2.LensLike' f s a
echo = Data.ProtoLens.Field.field @"echo"
endBlock ::
         forall f s a .
           (Prelude.Functor f,
            Data.ProtoLens.Field.HasField s "endBlock" a) =>
           Lens.Family2.LensLike' f s a
endBlock = Data.ProtoLens.Field.field @"endBlock"
error ::
      forall f s a .
        (Prelude.Functor f, Data.ProtoLens.Field.HasField s "error" a) =>
        Lens.Family2.LensLike' f s a
error = Data.ProtoLens.Field.field @"error"
evidence ::
         forall f s a .
           (Prelude.Functor f,
            Data.ProtoLens.Field.HasField s "evidence" a) =>
           Lens.Family2.LensLike' f s a
evidence = Data.ProtoLens.Field.field @"evidence"
evidenceHash ::
             forall f s a .
               (Prelude.Functor f,
                Data.ProtoLens.Field.HasField s "evidenceHash" a) =>
               Lens.Family2.LensLike' f s a
evidenceHash = Data.ProtoLens.Field.field @"evidenceHash"
exception ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "exception" a) =>
            Lens.Family2.LensLike' f s a
exception = Data.ProtoLens.Field.field @"exception"
flush ::
      forall f s a .
        (Prelude.Functor f, Data.ProtoLens.Field.HasField s "flush" a) =>
        Lens.Family2.LensLike' f s a
flush = Data.ProtoLens.Field.field @"flush"
gasUsed ::
        forall f s a .
          (Prelude.Functor f, Data.ProtoLens.Field.HasField s "gasUsed" a) =>
          Lens.Family2.LensLike' f s a
gasUsed = Data.ProtoLens.Field.field @"gasUsed"
gasWanted ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "gasWanted" a) =>
            Lens.Family2.LensLike' f s a
gasWanted = Data.ProtoLens.Field.field @"gasWanted"
hash ::
     forall f s a .
       (Prelude.Functor f, Data.ProtoLens.Field.HasField s "hash" a) =>
       Lens.Family2.LensLike' f s a
hash = Data.ProtoLens.Field.field @"hash"
header ::
       forall f s a .
         (Prelude.Functor f, Data.ProtoLens.Field.HasField s "header" a) =>
         Lens.Family2.LensLike' f s a
header = Data.ProtoLens.Field.field @"header"
height ::
       forall f s a .
         (Prelude.Functor f, Data.ProtoLens.Field.HasField s "height" a) =>
         Lens.Family2.LensLike' f s a
height = Data.ProtoLens.Field.field @"height"
index ::
      forall f s a .
        (Prelude.Functor f, Data.ProtoLens.Field.HasField s "index" a) =>
        Lens.Family2.LensLike' f s a
index = Data.ProtoLens.Field.field @"index"
info ::
     forall f s a .
       (Prelude.Functor f, Data.ProtoLens.Field.HasField s "info" a) =>
       Lens.Family2.LensLike' f s a
info = Data.ProtoLens.Field.field @"info"
initChain ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "initChain" a) =>
            Lens.Family2.LensLike' f s a
initChain = Data.ProtoLens.Field.field @"initChain"
key ::
    forall f s a .
      (Prelude.Functor f, Data.ProtoLens.Field.HasField s "key" a) =>
      Lens.Family2.LensLike' f s a
key = Data.ProtoLens.Field.field @"key"
lastBlockAppHash ::
                 forall f s a .
                   (Prelude.Functor f,
                    Data.ProtoLens.Field.HasField s "lastBlockAppHash" a) =>
                   Lens.Family2.LensLike' f s a
lastBlockAppHash = Data.ProtoLens.Field.field @"lastBlockAppHash"
lastBlockHeight ::
                forall f s a .
                  (Prelude.Functor f,
                   Data.ProtoLens.Field.HasField s "lastBlockHeight" a) =>
                  Lens.Family2.LensLike' f s a
lastBlockHeight = Data.ProtoLens.Field.field @"lastBlockHeight"
lastBlockId ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "lastBlockId" a) =>
              Lens.Family2.LensLike' f s a
lastBlockId = Data.ProtoLens.Field.field @"lastBlockId"
lastCommitHash ::
               forall f s a .
                 (Prelude.Functor f,
                  Data.ProtoLens.Field.HasField s "lastCommitHash" a) =>
                 Lens.Family2.LensLike' f s a
lastCommitHash = Data.ProtoLens.Field.field @"lastCommitHash"
lastCommitInfo ::
               forall f s a .
                 (Prelude.Functor f,
                  Data.ProtoLens.Field.HasField s "lastCommitInfo" a) =>
                 Lens.Family2.LensLike' f s a
lastCommitInfo = Data.ProtoLens.Field.field @"lastCommitInfo"
lastResultsHash ::
                forall f s a .
                  (Prelude.Functor f,
                   Data.ProtoLens.Field.HasField s "lastResultsHash" a) =>
                  Lens.Family2.LensLike' f s a
lastResultsHash = Data.ProtoLens.Field.field @"lastResultsHash"
log ::
    forall f s a .
      (Prelude.Functor f, Data.ProtoLens.Field.HasField s "log" a) =>
      Lens.Family2.LensLike' f s a
log = Data.ProtoLens.Field.field @"log"
maxAge ::
       forall f s a .
         (Prelude.Functor f, Data.ProtoLens.Field.HasField s "maxAge" a) =>
         Lens.Family2.LensLike' f s a
maxAge = Data.ProtoLens.Field.field @"maxAge"
maxBytes ::
         forall f s a .
           (Prelude.Functor f,
            Data.ProtoLens.Field.HasField s "maxBytes" a) =>
           Lens.Family2.LensLike' f s a
maxBytes = Data.ProtoLens.Field.field @"maxBytes"
maxGas ::
       forall f s a .
         (Prelude.Functor f, Data.ProtoLens.Field.HasField s "maxGas" a) =>
         Lens.Family2.LensLike' f s a
maxGas = Data.ProtoLens.Field.field @"maxGas"
maybe'beginBlock ::
                 forall f s a .
                   (Prelude.Functor f,
                    Data.ProtoLens.Field.HasField s "maybe'beginBlock" a) =>
                   Lens.Family2.LensLike' f s a
maybe'beginBlock = Data.ProtoLens.Field.field @"maybe'beginBlock"
maybe'blockSize ::
                forall f s a .
                  (Prelude.Functor f,
                   Data.ProtoLens.Field.HasField s "maybe'blockSize" a) =>
                  Lens.Family2.LensLike' f s a
maybe'blockSize = Data.ProtoLens.Field.field @"maybe'blockSize"
maybe'checkTx ::
              forall f s a .
                (Prelude.Functor f,
                 Data.ProtoLens.Field.HasField s "maybe'checkTx" a) =>
                Lens.Family2.LensLike' f s a
maybe'checkTx = Data.ProtoLens.Field.field @"maybe'checkTx"
maybe'commit ::
             forall f s a .
               (Prelude.Functor f,
                Data.ProtoLens.Field.HasField s "maybe'commit" a) =>
               Lens.Family2.LensLike' f s a
maybe'commit = Data.ProtoLens.Field.field @"maybe'commit"
maybe'consensusParamUpdates ::
                            forall f s a .
                              (Prelude.Functor f,
                               Data.ProtoLens.Field.HasField s "maybe'consensusParamUpdates" a) =>
                              Lens.Family2.LensLike' f s a
maybe'consensusParamUpdates
  = Data.ProtoLens.Field.field @"maybe'consensusParamUpdates"
maybe'consensusParams ::
                      forall f s a .
                        (Prelude.Functor f,
                         Data.ProtoLens.Field.HasField s "maybe'consensusParams" a) =>
                        Lens.Family2.LensLike' f s a
maybe'consensusParams
  = Data.ProtoLens.Field.field @"maybe'consensusParams"
maybe'deliverTx ::
                forall f s a .
                  (Prelude.Functor f,
                   Data.ProtoLens.Field.HasField s "maybe'deliverTx" a) =>
                  Lens.Family2.LensLike' f s a
maybe'deliverTx = Data.ProtoLens.Field.field @"maybe'deliverTx"
maybe'echo ::
           forall f s a .
             (Prelude.Functor f,
              Data.ProtoLens.Field.HasField s "maybe'echo" a) =>
             Lens.Family2.LensLike' f s a
maybe'echo = Data.ProtoLens.Field.field @"maybe'echo"
maybe'endBlock ::
               forall f s a .
                 (Prelude.Functor f,
                  Data.ProtoLens.Field.HasField s "maybe'endBlock" a) =>
                 Lens.Family2.LensLike' f s a
maybe'endBlock = Data.ProtoLens.Field.field @"maybe'endBlock"
maybe'evidence ::
               forall f s a .
                 (Prelude.Functor f,
                  Data.ProtoLens.Field.HasField s "maybe'evidence" a) =>
                 Lens.Family2.LensLike' f s a
maybe'evidence = Data.ProtoLens.Field.field @"maybe'evidence"
maybe'exception ::
                forall f s a .
                  (Prelude.Functor f,
                   Data.ProtoLens.Field.HasField s "maybe'exception" a) =>
                  Lens.Family2.LensLike' f s a
maybe'exception = Data.ProtoLens.Field.field @"maybe'exception"
maybe'flush ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "maybe'flush" a) =>
              Lens.Family2.LensLike' f s a
maybe'flush = Data.ProtoLens.Field.field @"maybe'flush"
maybe'header ::
             forall f s a .
               (Prelude.Functor f,
                Data.ProtoLens.Field.HasField s "maybe'header" a) =>
               Lens.Family2.LensLike' f s a
maybe'header = Data.ProtoLens.Field.field @"maybe'header"
maybe'info ::
           forall f s a .
             (Prelude.Functor f,
              Data.ProtoLens.Field.HasField s "maybe'info" a) =>
             Lens.Family2.LensLike' f s a
maybe'info = Data.ProtoLens.Field.field @"maybe'info"
maybe'initChain ::
                forall f s a .
                  (Prelude.Functor f,
                   Data.ProtoLens.Field.HasField s "maybe'initChain" a) =>
                  Lens.Family2.LensLike' f s a
maybe'initChain = Data.ProtoLens.Field.field @"maybe'initChain"
maybe'lastBlockId ::
                  forall f s a .
                    (Prelude.Functor f,
                     Data.ProtoLens.Field.HasField s "maybe'lastBlockId" a) =>
                    Lens.Family2.LensLike' f s a
maybe'lastBlockId = Data.ProtoLens.Field.field @"maybe'lastBlockId"
maybe'lastCommitInfo ::
                     forall f s a .
                       (Prelude.Functor f,
                        Data.ProtoLens.Field.HasField s "maybe'lastCommitInfo" a) =>
                       Lens.Family2.LensLike' f s a
maybe'lastCommitInfo
  = Data.ProtoLens.Field.field @"maybe'lastCommitInfo"
maybe'partsHeader ::
                  forall f s a .
                    (Prelude.Functor f,
                     Data.ProtoLens.Field.HasField s "maybe'partsHeader" a) =>
                    Lens.Family2.LensLike' f s a
maybe'partsHeader = Data.ProtoLens.Field.field @"maybe'partsHeader"
maybe'proof ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "maybe'proof" a) =>
              Lens.Family2.LensLike' f s a
maybe'proof = Data.ProtoLens.Field.field @"maybe'proof"
maybe'pubKey ::
             forall f s a .
               (Prelude.Functor f,
                Data.ProtoLens.Field.HasField s "maybe'pubKey" a) =>
               Lens.Family2.LensLike' f s a
maybe'pubKey = Data.ProtoLens.Field.field @"maybe'pubKey"
maybe'query ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "maybe'query" a) =>
              Lens.Family2.LensLike' f s a
maybe'query = Data.ProtoLens.Field.field @"maybe'query"
maybe'setOption ::
                forall f s a .
                  (Prelude.Functor f,
                   Data.ProtoLens.Field.HasField s "maybe'setOption" a) =>
                  Lens.Family2.LensLike' f s a
maybe'setOption = Data.ProtoLens.Field.field @"maybe'setOption"
maybe'time ::
           forall f s a .
             (Prelude.Functor f,
              Data.ProtoLens.Field.HasField s "maybe'time" a) =>
             Lens.Family2.LensLike' f s a
maybe'time = Data.ProtoLens.Field.field @"maybe'time"
maybe'validator ::
                forall f s a .
                  (Prelude.Functor f,
                   Data.ProtoLens.Field.HasField s "maybe'validator" a) =>
                  Lens.Family2.LensLike' f s a
maybe'validator = Data.ProtoLens.Field.field @"maybe'validator"
maybe'value ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "maybe'value" a) =>
              Lens.Family2.LensLike' f s a
maybe'value = Data.ProtoLens.Field.field @"maybe'value"
maybe'version ::
              forall f s a .
                (Prelude.Functor f,
                 Data.ProtoLens.Field.HasField s "maybe'version" a) =>
                Lens.Family2.LensLike' f s a
maybe'version = Data.ProtoLens.Field.field @"maybe'version"
message ::
        forall f s a .
          (Prelude.Functor f, Data.ProtoLens.Field.HasField s "message" a) =>
          Lens.Family2.LensLike' f s a
message = Data.ProtoLens.Field.field @"message"
nextValidatorsHash ::
                   forall f s a .
                     (Prelude.Functor f,
                      Data.ProtoLens.Field.HasField s "nextValidatorsHash" a) =>
                     Lens.Family2.LensLike' f s a
nextValidatorsHash
  = Data.ProtoLens.Field.field @"nextValidatorsHash"
numTxs ::
       forall f s a .
         (Prelude.Functor f, Data.ProtoLens.Field.HasField s "numTxs" a) =>
         Lens.Family2.LensLike' f s a
numTxs = Data.ProtoLens.Field.field @"numTxs"
p2pVersion ::
           forall f s a .
             (Prelude.Functor f,
              Data.ProtoLens.Field.HasField s "p2pVersion" a) =>
             Lens.Family2.LensLike' f s a
p2pVersion = Data.ProtoLens.Field.field @"p2pVersion"
partsHeader ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "partsHeader" a) =>
              Lens.Family2.LensLike' f s a
partsHeader = Data.ProtoLens.Field.field @"partsHeader"
path ::
     forall f s a .
       (Prelude.Functor f, Data.ProtoLens.Field.HasField s "path" a) =>
       Lens.Family2.LensLike' f s a
path = Data.ProtoLens.Field.field @"path"
power ::
      forall f s a .
        (Prelude.Functor f, Data.ProtoLens.Field.HasField s "power" a) =>
        Lens.Family2.LensLike' f s a
power = Data.ProtoLens.Field.field @"power"
proof ::
      forall f s a .
        (Prelude.Functor f, Data.ProtoLens.Field.HasField s "proof" a) =>
        Lens.Family2.LensLike' f s a
proof = Data.ProtoLens.Field.field @"proof"
proposerAddress ::
                forall f s a .
                  (Prelude.Functor f,
                   Data.ProtoLens.Field.HasField s "proposerAddress" a) =>
                  Lens.Family2.LensLike' f s a
proposerAddress = Data.ProtoLens.Field.field @"proposerAddress"
prove ::
      forall f s a .
        (Prelude.Functor f, Data.ProtoLens.Field.HasField s "prove" a) =>
        Lens.Family2.LensLike' f s a
prove = Data.ProtoLens.Field.field @"prove"
pubKey ::
       forall f s a .
         (Prelude.Functor f, Data.ProtoLens.Field.HasField s "pubKey" a) =>
         Lens.Family2.LensLike' f s a
pubKey = Data.ProtoLens.Field.field @"pubKey"
pubKeyTypes ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "pubKeyTypes" a) =>
              Lens.Family2.LensLike' f s a
pubKeyTypes = Data.ProtoLens.Field.field @"pubKeyTypes"
query ::
      forall f s a .
        (Prelude.Functor f, Data.ProtoLens.Field.HasField s "query" a) =>
        Lens.Family2.LensLike' f s a
query = Data.ProtoLens.Field.field @"query"
round ::
      forall f s a .
        (Prelude.Functor f, Data.ProtoLens.Field.HasField s "round" a) =>
        Lens.Family2.LensLike' f s a
round = Data.ProtoLens.Field.field @"round"
setOption ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "setOption" a) =>
            Lens.Family2.LensLike' f s a
setOption = Data.ProtoLens.Field.field @"setOption"
signedLastBlock ::
                forall f s a .
                  (Prelude.Functor f,
                   Data.ProtoLens.Field.HasField s "signedLastBlock" a) =>
                  Lens.Family2.LensLike' f s a
signedLastBlock = Data.ProtoLens.Field.field @"signedLastBlock"
tags ::
     forall f s a .
       (Prelude.Functor f, Data.ProtoLens.Field.HasField s "tags" a) =>
       Lens.Family2.LensLike' f s a
tags = Data.ProtoLens.Field.field @"tags"
time ::
     forall f s a .
       (Prelude.Functor f, Data.ProtoLens.Field.HasField s "time" a) =>
       Lens.Family2.LensLike' f s a
time = Data.ProtoLens.Field.field @"time"
total ::
      forall f s a .
        (Prelude.Functor f, Data.ProtoLens.Field.HasField s "total" a) =>
        Lens.Family2.LensLike' f s a
total = Data.ProtoLens.Field.field @"total"
totalTxs ::
         forall f s a .
           (Prelude.Functor f,
            Data.ProtoLens.Field.HasField s "totalTxs" a) =>
           Lens.Family2.LensLike' f s a
totalTxs = Data.ProtoLens.Field.field @"totalTxs"
totalVotingPower ::
                 forall f s a .
                   (Prelude.Functor f,
                    Data.ProtoLens.Field.HasField s "totalVotingPower" a) =>
                   Lens.Family2.LensLike' f s a
totalVotingPower = Data.ProtoLens.Field.field @"totalVotingPower"
tx ::
   forall f s a .
     (Prelude.Functor f, Data.ProtoLens.Field.HasField s "tx" a) =>
     Lens.Family2.LensLike' f s a
tx = Data.ProtoLens.Field.field @"tx"
type' ::
      forall f s a .
        (Prelude.Functor f, Data.ProtoLens.Field.HasField s "type'" a) =>
        Lens.Family2.LensLike' f s a
type' = Data.ProtoLens.Field.field @"type'"
validator ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "validator" a) =>
            Lens.Family2.LensLike' f s a
validator = Data.ProtoLens.Field.field @"validator"
validatorUpdates ::
                 forall f s a .
                   (Prelude.Functor f,
                    Data.ProtoLens.Field.HasField s "validatorUpdates" a) =>
                   Lens.Family2.LensLike' f s a
validatorUpdates = Data.ProtoLens.Field.field @"validatorUpdates"
validators ::
           forall f s a .
             (Prelude.Functor f,
              Data.ProtoLens.Field.HasField s "validators" a) =>
             Lens.Family2.LensLike' f s a
validators = Data.ProtoLens.Field.field @"validators"
validatorsHash ::
               forall f s a .
                 (Prelude.Functor f,
                  Data.ProtoLens.Field.HasField s "validatorsHash" a) =>
                 Lens.Family2.LensLike' f s a
validatorsHash = Data.ProtoLens.Field.field @"validatorsHash"
value ::
      forall f s a .
        (Prelude.Functor f, Data.ProtoLens.Field.HasField s "value" a) =>
        Lens.Family2.LensLike' f s a
value = Data.ProtoLens.Field.field @"value"
vec'byzantineValidators ::
                        forall f s a .
                          (Prelude.Functor f,
                           Data.ProtoLens.Field.HasField s "vec'byzantineValidators" a) =>
                          Lens.Family2.LensLike' f s a
vec'byzantineValidators
  = Data.ProtoLens.Field.field @"vec'byzantineValidators"
vec'pubKeyTypes ::
                forall f s a .
                  (Prelude.Functor f,
                   Data.ProtoLens.Field.HasField s "vec'pubKeyTypes" a) =>
                  Lens.Family2.LensLike' f s a
vec'pubKeyTypes = Data.ProtoLens.Field.field @"vec'pubKeyTypes"
vec'tags ::
         forall f s a .
           (Prelude.Functor f,
            Data.ProtoLens.Field.HasField s "vec'tags" a) =>
           Lens.Family2.LensLike' f s a
vec'tags = Data.ProtoLens.Field.field @"vec'tags"
vec'validatorUpdates ::
                     forall f s a .
                       (Prelude.Functor f,
                        Data.ProtoLens.Field.HasField s "vec'validatorUpdates" a) =>
                       Lens.Family2.LensLike' f s a
vec'validatorUpdates
  = Data.ProtoLens.Field.field @"vec'validatorUpdates"
vec'validators ::
               forall f s a .
                 (Prelude.Functor f,
                  Data.ProtoLens.Field.HasField s "vec'validators" a) =>
                 Lens.Family2.LensLike' f s a
vec'validators = Data.ProtoLens.Field.field @"vec'validators"
vec'votes ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "vec'votes" a) =>
            Lens.Family2.LensLike' f s a
vec'votes = Data.ProtoLens.Field.field @"vec'votes"
version ::
        forall f s a .
          (Prelude.Functor f, Data.ProtoLens.Field.HasField s "version" a) =>
          Lens.Family2.LensLike' f s a
version = Data.ProtoLens.Field.field @"version"
votes ::
      forall f s a .
        (Prelude.Functor f, Data.ProtoLens.Field.HasField s "votes" a) =>
        Lens.Family2.LensLike' f s a
votes = Data.ProtoLens.Field.field @"votes"