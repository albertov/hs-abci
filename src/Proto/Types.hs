{- This file was auto-generated from types.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies,
  UndecidableInstances, GeneralizedNewtypeDeriving,
  MultiParamTypeClasses, FlexibleContexts, FlexibleInstances,
  PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds,
  BangPatterns, TypeApplications #-}
{-# OPTIONS_GHC -fno-warn-unused-imports#-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports#-}
module Proto.Types
       (ABCIApplication(..), BlockID(), BlockSizeParams(),
        ConsensusParams(), Evidence(), EvidenceParams(), Header(),
        LastCommitInfo(), PartSetHeader(), PubKey(), Request(),
        Request'Value(..), _Request'Echo, _Request'Flush, _Request'Info,
        _Request'SetOption, _Request'InitChain, _Request'Query,
        _Request'BeginBlock, _Request'CheckTx, _Request'DeliverTx,
        _Request'EndBlock, _Request'Commit, RequestBeginBlock(),
        RequestCheckTx(), RequestCommit(), RequestDeliverTx(),
        RequestEcho(), RequestEndBlock(), RequestFlush(), RequestInfo(),
        RequestInitChain(), RequestQuery(), RequestSetOption(), Response(),
        Response'Value(..), _Response'Exception, _Response'Echo,
        _Response'Flush, _Response'Info, _Response'SetOption,
        _Response'InitChain, _Response'Query, _Response'BeginBlock,
        _Response'CheckTx, _Response'DeliverTx, _Response'EndBlock,
        _Response'Commit, ResponseBeginBlock(), ResponseCheckTx(),
        ResponseCommit(), ResponseDeliverTx(), ResponseEcho(),
        ResponseEndBlock(), ResponseException(), ResponseFlush(),
        ResponseInfo(), ResponseInitChain(), ResponseQuery(),
        ResponseSetOption(), Validator(), ValidatorParams(),
        ValidatorUpdate(), Version(), VoteInfo())
       where
import qualified Data.ProtoLens.Runtime.Control.DeepSeq
       as Control.DeepSeq
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Prism
       as Data.ProtoLens.Prism
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

{- | Fields :

    * 'Proto.Types_Fields.hash' @:: Lens' BlockID Data.ByteString.ByteString@
    * 'Proto.Types_Fields.partsHeader' @:: Lens' BlockID PartSetHeader@
    * 'Proto.Types_Fields.maybe'partsHeader' @:: Lens' BlockID (Prelude.Maybe PartSetHeader)@
 -}
data BlockID = BlockID{_BlockID'hash ::
                       !Data.ByteString.ByteString,
                       _BlockID'partsHeader :: !(Prelude.Maybe PartSetHeader),
                       _BlockID'_unknownFields :: !Data.ProtoLens.FieldSet}
                 deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BlockID where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BlockID "hash"
           (Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _BlockID'hash
               (\ x__ y__ -> x__{_BlockID'hash = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField BlockID "partsHeader"
           (PartSetHeader)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _BlockID'partsHeader
               (\ x__ y__ -> x__{_BlockID'partsHeader = y__}))
              Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Field.HasField BlockID "maybe'partsHeader"
           (Prelude.Maybe PartSetHeader)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _BlockID'partsHeader
               (\ x__ y__ -> x__{_BlockID'partsHeader = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message BlockID where
        messageName _ = Data.Text.pack "types.BlockID"
        fieldsByTag
          = let hash__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "hash"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"hash"))
                      :: Data.ProtoLens.FieldDescriptor BlockID
                partsHeader__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "parts_header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor PartSetHeader)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'partsHeader"))
                      :: Data.ProtoLens.FieldDescriptor BlockID
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, hash__field_descriptor),
                 (Data.ProtoLens.Tag 2, partsHeader__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _BlockID'_unknownFields
              (\ x__ y__ -> x__{_BlockID'_unknownFields = y__})
        defMessage
          = BlockID{_BlockID'hash = Data.ProtoLens.fieldDefault,
                    _BlockID'partsHeader = Prelude.Nothing,
                    _BlockID'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     BlockID -> Data.ProtoLens.Encoding.Bytes.Parser BlockID
                loop x
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 x)
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                10 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.getBytes
                                                    (Prelude.fromIntegral len))
                                                Data.ProtoLens.Encoding.Bytes.<?> "hash"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"hash") y
                                              x)
                                18 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?> "parts_header"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"partsHeader")
                                              y
                                              x)
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "BlockID"
        buildMessage
          = (\ _x ->
               (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"hash") _x
                  in
                  if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty else
                    (Data.ProtoLens.Encoding.Bytes.putVarInt 10) Data.Monoid.<>
                      (\ bs ->
                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                           Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs)
                        _v)
                 Data.Monoid.<>
                 (case
                    Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'partsHeader")
                      _x
                    of
                      (Prelude.Nothing) -> Data.Monoid.mempty
                      Prelude.Just _v -> (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                                           Data.Monoid.<>
                                           (((\ bs ->
                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                   (Prelude.fromIntegral
                                                      (Data.ByteString.length bs)))
                                                  Data.Monoid.<>
                                                  Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                              Prelude.. Data.ProtoLens.encodeMessage)
                                             _v)
                   Data.Monoid.<>
                   Data.ProtoLens.Encoding.Wire.buildFieldSet
                     (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData BlockID where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_BlockID'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_BlockID'hash x__)
                    (Control.DeepSeq.deepseq (_BlockID'partsHeader x__) (()))))
{- | Fields :

    * 'Proto.Types_Fields.maxBytes' @:: Lens' BlockSizeParams Data.Int.Int64@
    * 'Proto.Types_Fields.maxGas' @:: Lens' BlockSizeParams Data.Int.Int64@
 -}
data BlockSizeParams = BlockSizeParams{_BlockSizeParams'maxBytes ::
                                       !Data.Int.Int64,
                                       _BlockSizeParams'maxGas :: !Data.Int.Int64,
                                       _BlockSizeParams'_unknownFields :: !Data.ProtoLens.FieldSet}
                         deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BlockSizeParams where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BlockSizeParams "maxBytes"
           (Data.Int.Int64)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _BlockSizeParams'maxBytes
               (\ x__ y__ -> x__{_BlockSizeParams'maxBytes = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField BlockSizeParams "maxGas"
           (Data.Int.Int64)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _BlockSizeParams'maxGas
               (\ x__ y__ -> x__{_BlockSizeParams'maxGas = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message BlockSizeParams where
        messageName _ = Data.Text.pack "types.BlockSizeParams"
        fieldsByTag
          = let maxBytes__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "max_bytes"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"maxBytes"))
                      :: Data.ProtoLens.FieldDescriptor BlockSizeParams
                maxGas__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "max_gas"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"maxGas"))
                      :: Data.ProtoLens.FieldDescriptor BlockSizeParams
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, maxBytes__field_descriptor),
                 (Data.ProtoLens.Tag 2, maxGas__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _BlockSizeParams'_unknownFields
              (\ x__ y__ -> x__{_BlockSizeParams'_unknownFields = y__})
        defMessage
          = BlockSizeParams{_BlockSizeParams'maxBytes =
                              Data.ProtoLens.fieldDefault,
                            _BlockSizeParams'maxGas = Data.ProtoLens.fieldDefault,
                            _BlockSizeParams'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     BlockSizeParams ->
                       Data.ProtoLens.Encoding.Bytes.Parser BlockSizeParams
                loop x
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 x)
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                8 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                Data.ProtoLens.Encoding.Bytes.getVarInt)
                                               Data.ProtoLens.Encoding.Bytes.<?> "max_bytes"
                                        loop
                                          (Lens.Family2.set (Data.ProtoLens.Field.field @"maxBytes")
                                             y
                                             x)
                                16 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                 Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                Data.ProtoLens.Encoding.Bytes.<?> "max_gas"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"maxGas")
                                              y
                                              x)
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "BlockSizeParams"
        buildMessage
          = (\ _x ->
               (let _v
                      = Lens.Family2.view (Data.ProtoLens.Field.field @"maxBytes") _x
                  in
                  if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty else
                    (Data.ProtoLens.Encoding.Bytes.putVarInt 8) Data.Monoid.<>
                      ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                         Prelude.fromIntegral)
                        _v)
                 Data.Monoid.<>
                 (let _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"maxGas") _x
                    in
                    if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                      Data.Monoid.mempty else
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 16) Data.Monoid.<>
                        ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                           Prelude.fromIntegral)
                          _v)
                   Data.Monoid.<>
                   Data.ProtoLens.Encoding.Wire.buildFieldSet
                     (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData BlockSizeParams where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_BlockSizeParams'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_BlockSizeParams'maxBytes x__)
                    (Control.DeepSeq.deepseq (_BlockSizeParams'maxGas x__) (()))))
{- | Fields :

    * 'Proto.Types_Fields.blockSize' @:: Lens' ConsensusParams BlockSizeParams@
    * 'Proto.Types_Fields.maybe'blockSize' @:: Lens' ConsensusParams (Prelude.Maybe BlockSizeParams)@
    * 'Proto.Types_Fields.evidence' @:: Lens' ConsensusParams EvidenceParams@
    * 'Proto.Types_Fields.maybe'evidence' @:: Lens' ConsensusParams (Prelude.Maybe EvidenceParams)@
    * 'Proto.Types_Fields.validator' @:: Lens' ConsensusParams ValidatorParams@
    * 'Proto.Types_Fields.maybe'validator' @:: Lens' ConsensusParams (Prelude.Maybe ValidatorParams)@
 -}
data ConsensusParams = ConsensusParams{_ConsensusParams'blockSize
                                       :: !(Prelude.Maybe BlockSizeParams),
                                       _ConsensusParams'evidence :: !(Prelude.Maybe EvidenceParams),
                                       _ConsensusParams'validator ::
                                       !(Prelude.Maybe ValidatorParams),
                                       _ConsensusParams'_unknownFields :: !Data.ProtoLens.FieldSet}
                         deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ConsensusParams where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ConsensusParams "blockSize"
           (BlockSizeParams)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ConsensusParams'blockSize
               (\ x__ y__ -> x__{_ConsensusParams'blockSize = y__}))
              Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Field.HasField ConsensusParams
           "maybe'blockSize"
           (Prelude.Maybe BlockSizeParams)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ConsensusParams'blockSize
               (\ x__ y__ -> x__{_ConsensusParams'blockSize = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField ConsensusParams "evidence"
           (EvidenceParams)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ConsensusParams'evidence
               (\ x__ y__ -> x__{_ConsensusParams'evidence = y__}))
              Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Field.HasField ConsensusParams
           "maybe'evidence"
           (Prelude.Maybe EvidenceParams)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ConsensusParams'evidence
               (\ x__ y__ -> x__{_ConsensusParams'evidence = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField ConsensusParams "validator"
           (ValidatorParams)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ConsensusParams'validator
               (\ x__ y__ -> x__{_ConsensusParams'validator = y__}))
              Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Field.HasField ConsensusParams
           "maybe'validator"
           (Prelude.Maybe ValidatorParams)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ConsensusParams'validator
               (\ x__ y__ -> x__{_ConsensusParams'validator = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message ConsensusParams where
        messageName _ = Data.Text.pack "types.ConsensusParams"
        fieldsByTag
          = let blockSize__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "block_size"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor BlockSizeParams)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'blockSize"))
                      :: Data.ProtoLens.FieldDescriptor ConsensusParams
                evidence__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "evidence"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor EvidenceParams)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'evidence"))
                      :: Data.ProtoLens.FieldDescriptor ConsensusParams
                validator__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "validator"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ValidatorParams)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'validator"))
                      :: Data.ProtoLens.FieldDescriptor ConsensusParams
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, blockSize__field_descriptor),
                 (Data.ProtoLens.Tag 2, evidence__field_descriptor),
                 (Data.ProtoLens.Tag 3, validator__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _ConsensusParams'_unknownFields
              (\ x__ y__ -> x__{_ConsensusParams'_unknownFields = y__})
        defMessage
          = ConsensusParams{_ConsensusParams'blockSize = Prelude.Nothing,
                            _ConsensusParams'evidence = Prelude.Nothing,
                            _ConsensusParams'validator = Prelude.Nothing,
                            _ConsensusParams'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     ConsensusParams ->
                       Data.ProtoLens.Encoding.Bytes.Parser ConsensusParams
                loop x
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 x)
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                10 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?> "block_size"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"blockSize")
                                              y
                                              x)
                                18 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?> "evidence"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"evidence")
                                              y
                                              x)
                                26 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?> "validator"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"validator")
                                              y
                                              x)
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "ConsensusParams"
        buildMessage
          = (\ _x ->
               (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'blockSize")
                    _x
                  of
                    (Prelude.Nothing) -> Data.Monoid.mempty
                    Prelude.Just _v -> (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                                         Data.Monoid.<>
                                         (((\ bs ->
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                                Data.Monoid.<>
                                                Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                            Prelude.. Data.ProtoLens.encodeMessage)
                                           _v)
                 Data.Monoid.<>
                 (case
                    Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'evidence") _x
                    of
                      (Prelude.Nothing) -> Data.Monoid.mempty
                      Prelude.Just _v -> (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                                           Data.Monoid.<>
                                           (((\ bs ->
                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                   (Prelude.fromIntegral
                                                      (Data.ByteString.length bs)))
                                                  Data.Monoid.<>
                                                  Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                              Prelude.. Data.ProtoLens.encodeMessage)
                                             _v)
                   Data.Monoid.<>
                   (case
                      Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'validator")
                        _x
                      of
                        (Prelude.Nothing) -> Data.Monoid.mempty
                        Prelude.Just _v -> (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                                             Data.Monoid.<>
                                             (((\ bs ->
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                     (Prelude.fromIntegral
                                                        (Data.ByteString.length bs)))
                                                    Data.Monoid.<>
                                                    Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                Prelude.. Data.ProtoLens.encodeMessage)
                                               _v)
                     Data.Monoid.<>
                     Data.ProtoLens.Encoding.Wire.buildFieldSet
                       (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ConsensusParams where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_ConsensusParams'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_ConsensusParams'blockSize x__)
                    (Control.DeepSeq.deepseq (_ConsensusParams'evidence x__)
                       (Control.DeepSeq.deepseq (_ConsensusParams'validator x__) (())))))
{- | Fields :

    * 'Proto.Types_Fields.type'' @:: Lens' Evidence Data.Text.Text@
    * 'Proto.Types_Fields.validator' @:: Lens' Evidence Validator@
    * 'Proto.Types_Fields.maybe'validator' @:: Lens' Evidence (Prelude.Maybe Validator)@
    * 'Proto.Types_Fields.height' @:: Lens' Evidence Data.Int.Int64@
    * 'Proto.Types_Fields.time' @:: Lens' Evidence Proto.Vendored.Google.Protobuf.Timestamp.Timestamp@
    * 'Proto.Types_Fields.maybe'time' @:: Lens' Evidence
  (Prelude.Maybe Proto.Vendored.Google.Protobuf.Timestamp.Timestamp)@
    * 'Proto.Types_Fields.totalVotingPower' @:: Lens' Evidence Data.Int.Int64@
 -}
data Evidence = Evidence{_Evidence'type' :: !Data.Text.Text,
                         _Evidence'validator :: !(Prelude.Maybe Validator),
                         _Evidence'height :: !Data.Int.Int64,
                         _Evidence'time ::
                         !(Prelude.Maybe
                             Proto.Vendored.Google.Protobuf.Timestamp.Timestamp),
                         _Evidence'totalVotingPower :: !Data.Int.Int64,
                         _Evidence'_unknownFields :: !Data.ProtoLens.FieldSet}
                  deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Evidence where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Evidence "type'"
           (Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Evidence'type'
               (\ x__ y__ -> x__{_Evidence'type' = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField Evidence "validator"
           (Validator)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Evidence'validator
               (\ x__ y__ -> x__{_Evidence'validator = y__}))
              Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Field.HasField Evidence "maybe'validator"
           (Prelude.Maybe Validator)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Evidence'validator
               (\ x__ y__ -> x__{_Evidence'validator = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField Evidence "height"
           (Data.Int.Int64)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Evidence'height
               (\ x__ y__ -> x__{_Evidence'height = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField Evidence "time"
           (Proto.Vendored.Google.Protobuf.Timestamp.Timestamp)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Evidence'time
               (\ x__ y__ -> x__{_Evidence'time = y__}))
              Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Field.HasField Evidence "maybe'time"
           (Prelude.Maybe Proto.Vendored.Google.Protobuf.Timestamp.Timestamp)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Evidence'time
               (\ x__ y__ -> x__{_Evidence'time = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField Evidence "totalVotingPower"
           (Data.Int.Int64)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Evidence'totalVotingPower
               (\ x__ y__ -> x__{_Evidence'totalVotingPower = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message Evidence where
        messageName _ = Data.Text.pack "types.Evidence"
        fieldsByTag
          = let type'__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "type"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"type'"))
                      :: Data.ProtoLens.FieldDescriptor Evidence
                validator__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "validator"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor Validator)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'validator"))
                      :: Data.ProtoLens.FieldDescriptor Evidence
                height__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "height"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"height"))
                      :: Data.ProtoLens.FieldDescriptor Evidence
                time__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "time"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Vendored.Google.Protobuf.Timestamp.Timestamp)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'time"))
                      :: Data.ProtoLens.FieldDescriptor Evidence
                totalVotingPower__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "total_voting_power"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"totalVotingPower"))
                      :: Data.ProtoLens.FieldDescriptor Evidence
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, type'__field_descriptor),
                 (Data.ProtoLens.Tag 2, validator__field_descriptor),
                 (Data.ProtoLens.Tag 3, height__field_descriptor),
                 (Data.ProtoLens.Tag 4, time__field_descriptor),
                 (Data.ProtoLens.Tag 5, totalVotingPower__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _Evidence'_unknownFields
              (\ x__ y__ -> x__{_Evidence'_unknownFields = y__})
        defMessage
          = Evidence{_Evidence'type' = Data.ProtoLens.fieldDefault,
                     _Evidence'validator = Prelude.Nothing,
                     _Evidence'height = Data.ProtoLens.fieldDefault,
                     _Evidence'time = Prelude.Nothing,
                     _Evidence'totalVotingPower = Data.ProtoLens.fieldDefault,
                     _Evidence'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     Evidence -> Data.ProtoLens.Encoding.Bytes.Parser Evidence
                loop x
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 x)
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                10 -> do y <- (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                              Data.ProtoLens.Encoding.Bytes.getBytes
                                                                (Prelude.fromIntegral len)
                                                  Data.ProtoLens.Encoding.Bytes.runEither
                                                    (case Data.Text.Encoding.decodeUtf8' value of
                                                         Prelude.Left err -> Prelude.Left
                                                                               (Prelude.show err)
                                                         Prelude.Right r -> Prelude.Right r))
                                                Data.ProtoLens.Encoding.Bytes.<?> "type"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y
                                              x)
                                18 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?> "validator"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"validator")
                                              y
                                              x)
                                24 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                 Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                Data.ProtoLens.Encoding.Bytes.<?> "height"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"height")
                                              y
                                              x)
                                34 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?> "time"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"time") y
                                              x)
                                40 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                 Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                Data.ProtoLens.Encoding.Bytes.<?>
                                                "total_voting_power"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"totalVotingPower")
                                              y
                                              x)
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "Evidence"
        buildMessage
          = (\ _x ->
               (let _v
                      = Lens.Family2.view (Data.ProtoLens.Field.field @"type'") _x
                  in
                  if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty else
                    (Data.ProtoLens.Encoding.Bytes.putVarInt 10) Data.Monoid.<>
                      (((\ bs ->
                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                             Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Prelude.. Data.Text.Encoding.encodeUtf8)
                        _v)
                 Data.Monoid.<>
                 (case
                    Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'validator")
                      _x
                    of
                      (Prelude.Nothing) -> Data.Monoid.mempty
                      Prelude.Just _v -> (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                                           Data.Monoid.<>
                                           (((\ bs ->
                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                   (Prelude.fromIntegral
                                                      (Data.ByteString.length bs)))
                                                  Data.Monoid.<>
                                                  Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                              Prelude.. Data.ProtoLens.encodeMessage)
                                             _v)
                   Data.Monoid.<>
                   (let _v
                          = Lens.Family2.view (Data.ProtoLens.Field.field @"height") _x
                      in
                      if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                        Data.Monoid.mempty else
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 24) Data.Monoid.<>
                          ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                             Prelude.fromIntegral)
                            _v)
                     Data.Monoid.<>
                     (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'time") _x of
                          (Prelude.Nothing) -> Data.Monoid.mempty
                          Prelude.Just _v -> (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                               Data.Monoid.<>
                                               (((\ bs ->
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       (Prelude.fromIntegral
                                                          (Data.ByteString.length bs)))
                                                      Data.Monoid.<>
                                                      Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                  Prelude.. Data.ProtoLens.encodeMessage)
                                                 _v)
                       Data.Monoid.<>
                       (let _v
                              = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"totalVotingPower")
                                  _x
                          in
                          if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                            Data.Monoid.mempty else
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 40) Data.Monoid.<>
                              ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                                 Prelude.fromIntegral)
                                _v)
                         Data.Monoid.<>
                         Data.ProtoLens.Encoding.Wire.buildFieldSet
                           (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Evidence where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_Evidence'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_Evidence'type' x__)
                    (Control.DeepSeq.deepseq (_Evidence'validator x__)
                       (Control.DeepSeq.deepseq (_Evidence'height x__)
                          (Control.DeepSeq.deepseq (_Evidence'time x__)
                             (Control.DeepSeq.deepseq (_Evidence'totalVotingPower x__)
                                (())))))))
{- | Fields :

    * 'Proto.Types_Fields.maxAge' @:: Lens' EvidenceParams Data.Int.Int64@
 -}
data EvidenceParams = EvidenceParams{_EvidenceParams'maxAge ::
                                     !Data.Int.Int64,
                                     _EvidenceParams'_unknownFields :: !Data.ProtoLens.FieldSet}
                        deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EvidenceParams where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EvidenceParams "maxAge"
           (Data.Int.Int64)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _EvidenceParams'maxAge
               (\ x__ y__ -> x__{_EvidenceParams'maxAge = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message EvidenceParams where
        messageName _ = Data.Text.pack "types.EvidenceParams"
        fieldsByTag
          = let maxAge__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "max_age"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"maxAge"))
                      :: Data.ProtoLens.FieldDescriptor EvidenceParams
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, maxAge__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _EvidenceParams'_unknownFields
              (\ x__ y__ -> x__{_EvidenceParams'_unknownFields = y__})
        defMessage
          = EvidenceParams{_EvidenceParams'maxAge =
                             Data.ProtoLens.fieldDefault,
                           _EvidenceParams'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     EvidenceParams ->
                       Data.ProtoLens.Encoding.Bytes.Parser EvidenceParams
                loop x
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 x)
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                8 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                Data.ProtoLens.Encoding.Bytes.getVarInt)
                                               Data.ProtoLens.Encoding.Bytes.<?> "max_age"
                                        loop
                                          (Lens.Family2.set (Data.ProtoLens.Field.field @"maxAge") y
                                             x)
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "EvidenceParams"
        buildMessage
          = (\ _x ->
               (let _v
                      = Lens.Family2.view (Data.ProtoLens.Field.field @"maxAge") _x
                  in
                  if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty else
                    (Data.ProtoLens.Encoding.Bytes.putVarInt 8) Data.Monoid.<>
                      ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                         Prelude.fromIntegral)
                        _v)
                 Data.Monoid.<>
                 Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData EvidenceParams where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_EvidenceParams'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_EvidenceParams'maxAge x__) (())))
{- | Fields :

    * 'Proto.Types_Fields.version' @:: Lens' Header Version@
    * 'Proto.Types_Fields.maybe'version' @:: Lens' Header (Prelude.Maybe Version)@
    * 'Proto.Types_Fields.chainId' @:: Lens' Header Data.Text.Text@
    * 'Proto.Types_Fields.height' @:: Lens' Header Data.Int.Int64@
    * 'Proto.Types_Fields.time' @:: Lens' Header Proto.Vendored.Google.Protobuf.Timestamp.Timestamp@
    * 'Proto.Types_Fields.maybe'time' @:: Lens' Header
  (Prelude.Maybe Proto.Vendored.Google.Protobuf.Timestamp.Timestamp)@
    * 'Proto.Types_Fields.numTxs' @:: Lens' Header Data.Int.Int64@
    * 'Proto.Types_Fields.totalTxs' @:: Lens' Header Data.Int.Int64@
    * 'Proto.Types_Fields.lastBlockId' @:: Lens' Header BlockID@
    * 'Proto.Types_Fields.maybe'lastBlockId' @:: Lens' Header (Prelude.Maybe BlockID)@
    * 'Proto.Types_Fields.lastCommitHash' @:: Lens' Header Data.ByteString.ByteString@
    * 'Proto.Types_Fields.dataHash' @:: Lens' Header Data.ByteString.ByteString@
    * 'Proto.Types_Fields.validatorsHash' @:: Lens' Header Data.ByteString.ByteString@
    * 'Proto.Types_Fields.nextValidatorsHash' @:: Lens' Header Data.ByteString.ByteString@
    * 'Proto.Types_Fields.consensusHash' @:: Lens' Header Data.ByteString.ByteString@
    * 'Proto.Types_Fields.appHash' @:: Lens' Header Data.ByteString.ByteString@
    * 'Proto.Types_Fields.lastResultsHash' @:: Lens' Header Data.ByteString.ByteString@
    * 'Proto.Types_Fields.evidenceHash' @:: Lens' Header Data.ByteString.ByteString@
    * 'Proto.Types_Fields.proposerAddress' @:: Lens' Header Data.ByteString.ByteString@
 -}
data Header = Header{_Header'version :: !(Prelude.Maybe Version),
                     _Header'chainId :: !Data.Text.Text,
                     _Header'height :: !Data.Int.Int64,
                     _Header'time ::
                     !(Prelude.Maybe
                         Proto.Vendored.Google.Protobuf.Timestamp.Timestamp),
                     _Header'numTxs :: !Data.Int.Int64,
                     _Header'totalTxs :: !Data.Int.Int64,
                     _Header'lastBlockId :: !(Prelude.Maybe BlockID),
                     _Header'lastCommitHash :: !Data.ByteString.ByteString,
                     _Header'dataHash :: !Data.ByteString.ByteString,
                     _Header'validatorsHash :: !Data.ByteString.ByteString,
                     _Header'nextValidatorsHash :: !Data.ByteString.ByteString,
                     _Header'consensusHash :: !Data.ByteString.ByteString,
                     _Header'appHash :: !Data.ByteString.ByteString,
                     _Header'lastResultsHash :: !Data.ByteString.ByteString,
                     _Header'evidenceHash :: !Data.ByteString.ByteString,
                     _Header'proposerAddress :: !Data.ByteString.ByteString,
                     _Header'_unknownFields :: !Data.ProtoLens.FieldSet}
                deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Header where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Header "version" (Version)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Header'version
               (\ x__ y__ -> x__{_Header'version = y__}))
              Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Field.HasField Header "maybe'version"
           (Prelude.Maybe Version)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Header'version
               (\ x__ y__ -> x__{_Header'version = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField Header "chainId"
           (Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Header'chainId
               (\ x__ y__ -> x__{_Header'chainId = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField Header "height"
           (Data.Int.Int64)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Header'height
               (\ x__ y__ -> x__{_Header'height = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField Header "time"
           (Proto.Vendored.Google.Protobuf.Timestamp.Timestamp)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Header'time
               (\ x__ y__ -> x__{_Header'time = y__}))
              Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Field.HasField Header "maybe'time"
           (Prelude.Maybe Proto.Vendored.Google.Protobuf.Timestamp.Timestamp)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Header'time
               (\ x__ y__ -> x__{_Header'time = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField Header "numTxs"
           (Data.Int.Int64)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Header'numTxs
               (\ x__ y__ -> x__{_Header'numTxs = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField Header "totalTxs"
           (Data.Int.Int64)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Header'totalTxs
               (\ x__ y__ -> x__{_Header'totalTxs = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField Header "lastBlockId"
           (BlockID)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Header'lastBlockId
               (\ x__ y__ -> x__{_Header'lastBlockId = y__}))
              Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Field.HasField Header "maybe'lastBlockId"
           (Prelude.Maybe BlockID)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Header'lastBlockId
               (\ x__ y__ -> x__{_Header'lastBlockId = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField Header "lastCommitHash"
           (Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Header'lastCommitHash
               (\ x__ y__ -> x__{_Header'lastCommitHash = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField Header "dataHash"
           (Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Header'dataHash
               (\ x__ y__ -> x__{_Header'dataHash = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField Header "validatorsHash"
           (Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Header'validatorsHash
               (\ x__ y__ -> x__{_Header'validatorsHash = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField Header "nextValidatorsHash"
           (Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Header'nextValidatorsHash
               (\ x__ y__ -> x__{_Header'nextValidatorsHash = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField Header "consensusHash"
           (Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Header'consensusHash
               (\ x__ y__ -> x__{_Header'consensusHash = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField Header "appHash"
           (Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Header'appHash
               (\ x__ y__ -> x__{_Header'appHash = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField Header "lastResultsHash"
           (Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Header'lastResultsHash
               (\ x__ y__ -> x__{_Header'lastResultsHash = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField Header "evidenceHash"
           (Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Header'evidenceHash
               (\ x__ y__ -> x__{_Header'evidenceHash = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField Header "proposerAddress"
           (Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Header'proposerAddress
               (\ x__ y__ -> x__{_Header'proposerAddress = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message Header where
        messageName _ = Data.Text.pack "types.Header"
        fieldsByTag
          = let version__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "version"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor Version)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'version"))
                      :: Data.ProtoLens.FieldDescriptor Header
                chainId__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "chain_id"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"chainId"))
                      :: Data.ProtoLens.FieldDescriptor Header
                height__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "height"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"height"))
                      :: Data.ProtoLens.FieldDescriptor Header
                time__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "time"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Vendored.Google.Protobuf.Timestamp.Timestamp)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'time"))
                      :: Data.ProtoLens.FieldDescriptor Header
                numTxs__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "num_txs"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"numTxs"))
                      :: Data.ProtoLens.FieldDescriptor Header
                totalTxs__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "total_txs"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"totalTxs"))
                      :: Data.ProtoLens.FieldDescriptor Header
                lastBlockId__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "last_block_id"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor BlockID)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'lastBlockId"))
                      :: Data.ProtoLens.FieldDescriptor Header
                lastCommitHash__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "last_commit_hash"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"lastCommitHash"))
                      :: Data.ProtoLens.FieldDescriptor Header
                dataHash__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "data_hash"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"dataHash"))
                      :: Data.ProtoLens.FieldDescriptor Header
                validatorsHash__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "validators_hash"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"validatorsHash"))
                      :: Data.ProtoLens.FieldDescriptor Header
                nextValidatorsHash__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "next_validators_hash"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"nextValidatorsHash"))
                      :: Data.ProtoLens.FieldDescriptor Header
                consensusHash__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "consensus_hash"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"consensusHash"))
                      :: Data.ProtoLens.FieldDescriptor Header
                appHash__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "app_hash"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"appHash"))
                      :: Data.ProtoLens.FieldDescriptor Header
                lastResultsHash__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "last_results_hash"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"lastResultsHash"))
                      :: Data.ProtoLens.FieldDescriptor Header
                evidenceHash__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "evidence_hash"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"evidenceHash"))
                      :: Data.ProtoLens.FieldDescriptor Header
                proposerAddress__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "proposer_address"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"proposerAddress"))
                      :: Data.ProtoLens.FieldDescriptor Header
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, version__field_descriptor),
                 (Data.ProtoLens.Tag 2, chainId__field_descriptor),
                 (Data.ProtoLens.Tag 3, height__field_descriptor),
                 (Data.ProtoLens.Tag 4, time__field_descriptor),
                 (Data.ProtoLens.Tag 5, numTxs__field_descriptor),
                 (Data.ProtoLens.Tag 6, totalTxs__field_descriptor),
                 (Data.ProtoLens.Tag 7, lastBlockId__field_descriptor),
                 (Data.ProtoLens.Tag 8, lastCommitHash__field_descriptor),
                 (Data.ProtoLens.Tag 9, dataHash__field_descriptor),
                 (Data.ProtoLens.Tag 10, validatorsHash__field_descriptor),
                 (Data.ProtoLens.Tag 11, nextValidatorsHash__field_descriptor),
                 (Data.ProtoLens.Tag 12, consensusHash__field_descriptor),
                 (Data.ProtoLens.Tag 13, appHash__field_descriptor),
                 (Data.ProtoLens.Tag 14, lastResultsHash__field_descriptor),
                 (Data.ProtoLens.Tag 15, evidenceHash__field_descriptor),
                 (Data.ProtoLens.Tag 16, proposerAddress__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _Header'_unknownFields
              (\ x__ y__ -> x__{_Header'_unknownFields = y__})
        defMessage
          = Header{_Header'version = Prelude.Nothing,
                   _Header'chainId = Data.ProtoLens.fieldDefault,
                   _Header'height = Data.ProtoLens.fieldDefault,
                   _Header'time = Prelude.Nothing,
                   _Header'numTxs = Data.ProtoLens.fieldDefault,
                   _Header'totalTxs = Data.ProtoLens.fieldDefault,
                   _Header'lastBlockId = Prelude.Nothing,
                   _Header'lastCommitHash = Data.ProtoLens.fieldDefault,
                   _Header'dataHash = Data.ProtoLens.fieldDefault,
                   _Header'validatorsHash = Data.ProtoLens.fieldDefault,
                   _Header'nextValidatorsHash = Data.ProtoLens.fieldDefault,
                   _Header'consensusHash = Data.ProtoLens.fieldDefault,
                   _Header'appHash = Data.ProtoLens.fieldDefault,
                   _Header'lastResultsHash = Data.ProtoLens.fieldDefault,
                   _Header'evidenceHash = Data.ProtoLens.fieldDefault,
                   _Header'proposerAddress = Data.ProtoLens.fieldDefault,
                   _Header'_unknownFields = ([])}
        parseMessage
          = let loop :: Header -> Data.ProtoLens.Encoding.Bytes.Parser Header
                loop x
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 x)
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                10 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?> "version"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"version")
                                              y
                                              x)
                                18 -> do y <- (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                              Data.ProtoLens.Encoding.Bytes.getBytes
                                                                (Prelude.fromIntegral len)
                                                  Data.ProtoLens.Encoding.Bytes.runEither
                                                    (case Data.Text.Encoding.decodeUtf8' value of
                                                         Prelude.Left err -> Prelude.Left
                                                                               (Prelude.show err)
                                                         Prelude.Right r -> Prelude.Right r))
                                                Data.ProtoLens.Encoding.Bytes.<?> "chain_id"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"chainId")
                                              y
                                              x)
                                24 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                 Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                Data.ProtoLens.Encoding.Bytes.<?> "height"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"height")
                                              y
                                              x)
                                34 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?> "time"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"time") y
                                              x)
                                40 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                 Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                Data.ProtoLens.Encoding.Bytes.<?> "num_txs"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"numTxs")
                                              y
                                              x)
                                48 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                 Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                Data.ProtoLens.Encoding.Bytes.<?> "total_txs"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"totalTxs")
                                              y
                                              x)
                                58 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?> "last_block_id"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"lastBlockId")
                                              y
                                              x)
                                66 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.getBytes
                                                    (Prelude.fromIntegral len))
                                                Data.ProtoLens.Encoding.Bytes.<?> "last_commit_hash"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"lastCommitHash")
                                              y
                                              x)
                                74 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.getBytes
                                                    (Prelude.fromIntegral len))
                                                Data.ProtoLens.Encoding.Bytes.<?> "data_hash"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"dataHash")
                                              y
                                              x)
                                82 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.getBytes
                                                    (Prelude.fromIntegral len))
                                                Data.ProtoLens.Encoding.Bytes.<?> "validators_hash"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"validatorsHash")
                                              y
                                              x)
                                90 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.getBytes
                                                    (Prelude.fromIntegral len))
                                                Data.ProtoLens.Encoding.Bytes.<?>
                                                "next_validators_hash"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"nextValidatorsHash")
                                              y
                                              x)
                                98 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.getBytes
                                                    (Prelude.fromIntegral len))
                                                Data.ProtoLens.Encoding.Bytes.<?> "consensus_hash"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"consensusHash")
                                              y
                                              x)
                                106 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                   Data.ProtoLens.Encoding.Bytes.getBytes
                                                     (Prelude.fromIntegral len))
                                                 Data.ProtoLens.Encoding.Bytes.<?> "app_hash"
                                          loop
                                            (Lens.Family2.set
                                               (Data.ProtoLens.Field.field @"appHash")
                                               y
                                               x)
                                114 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                   Data.ProtoLens.Encoding.Bytes.getBytes
                                                     (Prelude.fromIntegral len))
                                                 Data.ProtoLens.Encoding.Bytes.<?>
                                                 "last_results_hash"
                                          loop
                                            (Lens.Family2.set
                                               (Data.ProtoLens.Field.field @"lastResultsHash")
                                               y
                                               x)
                                122 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                   Data.ProtoLens.Encoding.Bytes.getBytes
                                                     (Prelude.fromIntegral len))
                                                 Data.ProtoLens.Encoding.Bytes.<?> "evidence_hash"
                                          loop
                                            (Lens.Family2.set
                                               (Data.ProtoLens.Field.field @"evidenceHash")
                                               y
                                               x)
                                130 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                   Data.ProtoLens.Encoding.Bytes.getBytes
                                                     (Prelude.fromIntegral len))
                                                 Data.ProtoLens.Encoding.Bytes.<?>
                                                 "proposer_address"
                                          loop
                                            (Lens.Family2.set
                                               (Data.ProtoLens.Field.field @"proposerAddress")
                                               y
                                               x)
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "Header"
        buildMessage
          = (\ _x ->
               (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'version") _x
                  of
                    (Prelude.Nothing) -> Data.Monoid.mempty
                    Prelude.Just _v -> (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                                         Data.Monoid.<>
                                         (((\ bs ->
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                                Data.Monoid.<>
                                                Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                            Prelude.. Data.ProtoLens.encodeMessage)
                                           _v)
                 Data.Monoid.<>
                 (let _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"chainId") _x
                    in
                    if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                      Data.Monoid.mempty else
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 18) Data.Monoid.<>
                        (((\ bs ->
                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                (Prelude.fromIntegral (Data.ByteString.length bs)))
                               Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           Prelude.. Data.Text.Encoding.encodeUtf8)
                          _v)
                   Data.Monoid.<>
                   (let _v
                          = Lens.Family2.view (Data.ProtoLens.Field.field @"height") _x
                      in
                      if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                        Data.Monoid.mempty else
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 24) Data.Monoid.<>
                          ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                             Prelude.fromIntegral)
                            _v)
                     Data.Monoid.<>
                     (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'time") _x of
                          (Prelude.Nothing) -> Data.Monoid.mempty
                          Prelude.Just _v -> (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                               Data.Monoid.<>
                                               (((\ bs ->
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       (Prelude.fromIntegral
                                                          (Data.ByteString.length bs)))
                                                      Data.Monoid.<>
                                                      Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                  Prelude.. Data.ProtoLens.encodeMessage)
                                                 _v)
                       Data.Monoid.<>
                       (let _v
                              = Lens.Family2.view (Data.ProtoLens.Field.field @"numTxs") _x
                          in
                          if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                            Data.Monoid.mempty else
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 40) Data.Monoid.<>
                              ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                                 Prelude.fromIntegral)
                                _v)
                         Data.Monoid.<>
                         (let _v
                                = Lens.Family2.view (Data.ProtoLens.Field.field @"totalTxs") _x
                            in
                            if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                              Data.Monoid.mempty else
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 48) Data.Monoid.<>
                                ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                                   Prelude.fromIntegral)
                                  _v)
                           Data.Monoid.<>
                           (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'lastBlockId")
                                _x
                              of
                                (Prelude.Nothing) -> Data.Monoid.mempty
                                Prelude.Just _v -> (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                                     Data.Monoid.<>
                                                     (((\ bs ->
                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             (Prelude.fromIntegral
                                                                (Data.ByteString.length bs)))
                                                            Data.Monoid.<>
                                                            Data.ProtoLens.Encoding.Bytes.putBytes
                                                              bs))
                                                        Prelude.. Data.ProtoLens.encodeMessage)
                                                       _v)
                             Data.Monoid.<>
                             (let _v
                                    = Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"lastCommitHash")
                                        _x
                                in
                                if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                                  Data.Monoid.mempty else
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 66) Data.Monoid.<>
                                    (\ bs ->
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                         Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs)
                                      _v)
                               Data.Monoid.<>
                               (let _v
                                      = Lens.Family2.view (Data.ProtoLens.Field.field @"dataHash")
                                          _x
                                  in
                                  if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                                    Data.Monoid.mempty else
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 74) Data.Monoid.<>
                                      (\ bs ->
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs)
                                        _v)
                                 Data.Monoid.<>
                                 (let _v
                                        = Lens.Family2.view
                                            (Data.ProtoLens.Field.field @"validatorsHash")
                                            _x
                                    in
                                    if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty else
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 82) Data.Monoid.<>
                                        (\ bs ->
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                             Data.Monoid.<>
                                             Data.ProtoLens.Encoding.Bytes.putBytes bs)
                                          _v)
                                   Data.Monoid.<>
                                   (let _v
                                          = Lens.Family2.view
                                              (Data.ProtoLens.Field.field @"nextValidatorsHash")
                                              _x
                                      in
                                      if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                                        Data.Monoid.mempty else
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 90) Data.Monoid.<>
                                          (\ bs ->
                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                (Prelude.fromIntegral (Data.ByteString.length bs)))
                                               Data.Monoid.<>
                                               Data.ProtoLens.Encoding.Bytes.putBytes bs)
                                            _v)
                                     Data.Monoid.<>
                                     (let _v
                                            = Lens.Family2.view
                                                (Data.ProtoLens.Field.field @"consensusHash")
                                                _x
                                        in
                                        if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                                          Data.Monoid.mempty else
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt 98)
                                            Data.Monoid.<>
                                            (\ bs ->
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                  (Prelude.fromIntegral
                                                     (Data.ByteString.length bs)))
                                                 Data.Monoid.<>
                                                 Data.ProtoLens.Encoding.Bytes.putBytes bs)
                                              _v)
                                       Data.Monoid.<>
                                       (let _v
                                              = Lens.Family2.view
                                                  (Data.ProtoLens.Field.field @"appHash")
                                                  _x
                                          in
                                          if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                                            Data.Monoid.mempty else
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 106)
                                              Data.Monoid.<>
                                              (\ bs ->
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                   Data.Monoid.<>
                                                   Data.ProtoLens.Encoding.Bytes.putBytes bs)
                                                _v)
                                         Data.Monoid.<>
                                         (let _v
                                                = Lens.Family2.view
                                                    (Data.ProtoLens.Field.field @"lastResultsHash")
                                                    _x
                                            in
                                            if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                                              Data.Monoid.mempty else
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt 114)
                                                Data.Monoid.<>
                                                (\ bs ->
                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                      (Prelude.fromIntegral
                                                         (Data.ByteString.length bs)))
                                                     Data.Monoid.<>
                                                     Data.ProtoLens.Encoding.Bytes.putBytes bs)
                                                  _v)
                                           Data.Monoid.<>
                                           (let _v
                                                  = Lens.Family2.view
                                                      (Data.ProtoLens.Field.field @"evidenceHash")
                                                      _x
                                              in
                                              if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                                                Data.Monoid.mempty else
                                                (Data.ProtoLens.Encoding.Bytes.putVarInt 122)
                                                  Data.Monoid.<>
                                                  (\ bs ->
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                        (Prelude.fromIntegral
                                                           (Data.ByteString.length bs)))
                                                       Data.Monoid.<>
                                                       Data.ProtoLens.Encoding.Bytes.putBytes bs)
                                                    _v)
                                             Data.Monoid.<>
                                             (let _v
                                                    = Lens.Family2.view
                                                        (Data.ProtoLens.Field.field
                                                           @"proposerAddress")
                                                        _x
                                                in
                                                if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                                                  Data.Monoid.mempty else
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 130)
                                                    Data.Monoid.<>
                                                    (\ bs ->
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          (Prelude.fromIntegral
                                                             (Data.ByteString.length bs)))
                                                         Data.Monoid.<>
                                                         Data.ProtoLens.Encoding.Bytes.putBytes bs)
                                                      _v)
                                               Data.Monoid.<>
                                               Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                 (Lens.Family2.view Data.ProtoLens.unknownFields
                                                    _x))
instance Control.DeepSeq.NFData Header where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_Header'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_Header'version x__)
                    (Control.DeepSeq.deepseq (_Header'chainId x__)
                       (Control.DeepSeq.deepseq (_Header'height x__)
                          (Control.DeepSeq.deepseq (_Header'time x__)
                             (Control.DeepSeq.deepseq (_Header'numTxs x__)
                                (Control.DeepSeq.deepseq (_Header'totalTxs x__)
                                   (Control.DeepSeq.deepseq (_Header'lastBlockId x__)
                                      (Control.DeepSeq.deepseq (_Header'lastCommitHash x__)
                                         (Control.DeepSeq.deepseq (_Header'dataHash x__)
                                            (Control.DeepSeq.deepseq (_Header'validatorsHash x__)
                                               (Control.DeepSeq.deepseq
                                                  (_Header'nextValidatorsHash x__)
                                                  (Control.DeepSeq.deepseq
                                                     (_Header'consensusHash x__)
                                                     (Control.DeepSeq.deepseq (_Header'appHash x__)
                                                        (Control.DeepSeq.deepseq
                                                           (_Header'lastResultsHash x__)
                                                           (Control.DeepSeq.deepseq
                                                              (_Header'evidenceHash x__)
                                                              (Control.DeepSeq.deepseq
                                                                 (_Header'proposerAddress x__)
                                                                 (()))))))))))))))))))
{- | Fields :

    * 'Proto.Types_Fields.round' @:: Lens' LastCommitInfo Data.Int.Int32@
    * 'Proto.Types_Fields.votes' @:: Lens' LastCommitInfo [VoteInfo]@
    * 'Proto.Types_Fields.vec'votes' @:: Lens' LastCommitInfo (Data.Vector.Vector VoteInfo)@
 -}
data LastCommitInfo = LastCommitInfo{_LastCommitInfo'round ::
                                     !Data.Int.Int32,
                                     _LastCommitInfo'votes :: !(Data.Vector.Vector VoteInfo),
                                     _LastCommitInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
                        deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LastCommitInfo where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField LastCommitInfo "round"
           (Data.Int.Int32)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _LastCommitInfo'round
               (\ x__ y__ -> x__{_LastCommitInfo'round = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField LastCommitInfo "votes"
           ([VoteInfo])
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _LastCommitInfo'votes
               (\ x__ y__ -> x__{_LastCommitInfo'votes = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens Data.Vector.Generic.toList
                (\ _ y__ -> Data.Vector.Generic.fromList y__)
instance Data.ProtoLens.Field.HasField LastCommitInfo "vec'votes"
           (Data.Vector.Vector VoteInfo)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _LastCommitInfo'votes
               (\ x__ y__ -> x__{_LastCommitInfo'votes = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message LastCommitInfo where
        messageName _ = Data.Text.pack "types.LastCommitInfo"
        fieldsByTag
          = let round__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "round"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"round"))
                      :: Data.ProtoLens.FieldDescriptor LastCommitInfo
                votes__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "votes"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor VoteInfo)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Data.ProtoLens.Field.field @"votes"))
                      :: Data.ProtoLens.FieldDescriptor LastCommitInfo
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, round__field_descriptor),
                 (Data.ProtoLens.Tag 2, votes__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _LastCommitInfo'_unknownFields
              (\ x__ y__ -> x__{_LastCommitInfo'_unknownFields = y__})
        defMessage
          = LastCommitInfo{_LastCommitInfo'round =
                             Data.ProtoLens.fieldDefault,
                           _LastCommitInfo'votes = Data.Vector.Generic.empty,
                           _LastCommitInfo'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     LastCommitInfo ->
                       Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector
                         Data.ProtoLens.Encoding.Growing.RealWorld
                         VoteInfo
                         -> Data.ProtoLens.Encoding.Bytes.Parser LastCommitInfo
                loop x mutable'votes
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do frozen'votes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'votes)
                            let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 (Lens.Family2.set (Data.ProtoLens.Field.field @"vec'votes")
                                    frozen'votes
                                    x))
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                8 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                Data.ProtoLens.Encoding.Bytes.getVarInt)
                                               Data.ProtoLens.Encoding.Bytes.<?> "round"
                                        loop
                                          (Lens.Family2.set (Data.ProtoLens.Field.field @"round") y
                                             x)
                                          mutable'votes
                                18 -> do !y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                   Data.ProtoLens.Encoding.Bytes.isolate
                                                     (Prelude.fromIntegral len)
                                                     Data.ProtoLens.parseMessage)
                                                 Data.ProtoLens.Encoding.Bytes.<?> "votes"
                                         v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.append
                                                   mutable'votes
                                                   y)
                                         loop x v
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
                                             mutable'votes
              in
              (do mutable'votes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
                  loop Data.ProtoLens.defMessage mutable'votes)
                Data.ProtoLens.Encoding.Bytes.<?> "LastCommitInfo"
        buildMessage
          = (\ _x ->
               (let _v
                      = Lens.Family2.view (Data.ProtoLens.Field.field @"round") _x
                  in
                  if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty else
                    (Data.ProtoLens.Encoding.Bytes.putVarInt 8) Data.Monoid.<>
                      ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                         Prelude.fromIntegral)
                        _v)
                 Data.Monoid.<>
                 (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                    (\ _v ->
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18) Data.Monoid.<>
                         (((\ bs ->
                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Prelude.. Data.ProtoLens.encodeMessage)
                           _v)
                    (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'votes") _x))
                   Data.Monoid.<>
                   Data.ProtoLens.Encoding.Wire.buildFieldSet
                     (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData LastCommitInfo where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_LastCommitInfo'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_LastCommitInfo'round x__)
                    (Control.DeepSeq.deepseq (_LastCommitInfo'votes x__) (()))))
{- | Fields :

    * 'Proto.Types_Fields.total' @:: Lens' PartSetHeader Data.Int.Int32@
    * 'Proto.Types_Fields.hash' @:: Lens' PartSetHeader Data.ByteString.ByteString@
 -}
data PartSetHeader = PartSetHeader{_PartSetHeader'total ::
                                   !Data.Int.Int32,
                                   _PartSetHeader'hash :: !Data.ByteString.ByteString,
                                   _PartSetHeader'_unknownFields :: !Data.ProtoLens.FieldSet}
                       deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PartSetHeader where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField PartSetHeader "total"
           (Data.Int.Int32)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _PartSetHeader'total
               (\ x__ y__ -> x__{_PartSetHeader'total = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField PartSetHeader "hash"
           (Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _PartSetHeader'hash
               (\ x__ y__ -> x__{_PartSetHeader'hash = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message PartSetHeader where
        messageName _ = Data.Text.pack "types.PartSetHeader"
        fieldsByTag
          = let total__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "total"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"total"))
                      :: Data.ProtoLens.FieldDescriptor PartSetHeader
                hash__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "hash"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"hash"))
                      :: Data.ProtoLens.FieldDescriptor PartSetHeader
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, total__field_descriptor),
                 (Data.ProtoLens.Tag 2, hash__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _PartSetHeader'_unknownFields
              (\ x__ y__ -> x__{_PartSetHeader'_unknownFields = y__})
        defMessage
          = PartSetHeader{_PartSetHeader'total = Data.ProtoLens.fieldDefault,
                          _PartSetHeader'hash = Data.ProtoLens.fieldDefault,
                          _PartSetHeader'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     PartSetHeader -> Data.ProtoLens.Encoding.Bytes.Parser PartSetHeader
                loop x
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 x)
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                8 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                Data.ProtoLens.Encoding.Bytes.getVarInt)
                                               Data.ProtoLens.Encoding.Bytes.<?> "total"
                                        loop
                                          (Lens.Family2.set (Data.ProtoLens.Field.field @"total") y
                                             x)
                                18 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.getBytes
                                                    (Prelude.fromIntegral len))
                                                Data.ProtoLens.Encoding.Bytes.<?> "hash"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"hash") y
                                              x)
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "PartSetHeader"
        buildMessage
          = (\ _x ->
               (let _v
                      = Lens.Family2.view (Data.ProtoLens.Field.field @"total") _x
                  in
                  if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty else
                    (Data.ProtoLens.Encoding.Bytes.putVarInt 8) Data.Monoid.<>
                      ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                         Prelude.fromIntegral)
                        _v)
                 Data.Monoid.<>
                 (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"hash") _x
                    in
                    if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                      Data.Monoid.mempty else
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 18) Data.Monoid.<>
                        (\ bs ->
                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                             Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs)
                          _v)
                   Data.Monoid.<>
                   Data.ProtoLens.Encoding.Wire.buildFieldSet
                     (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData PartSetHeader where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_PartSetHeader'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_PartSetHeader'total x__)
                    (Control.DeepSeq.deepseq (_PartSetHeader'hash x__) (()))))
{- | Fields :

    * 'Proto.Types_Fields.type'' @:: Lens' PubKey Data.Text.Text@
    * 'Proto.Types_Fields.data'' @:: Lens' PubKey Data.ByteString.ByteString@
 -}
data PubKey = PubKey{_PubKey'type' :: !Data.Text.Text,
                     _PubKey'data' :: !Data.ByteString.ByteString,
                     _PubKey'_unknownFields :: !Data.ProtoLens.FieldSet}
                deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PubKey where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField PubKey "type'"
           (Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _PubKey'type'
               (\ x__ y__ -> x__{_PubKey'type' = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField PubKey "data'"
           (Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _PubKey'data'
               (\ x__ y__ -> x__{_PubKey'data' = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message PubKey where
        messageName _ = Data.Text.pack "types.PubKey"
        fieldsByTag
          = let type'__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "type"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"type'"))
                      :: Data.ProtoLens.FieldDescriptor PubKey
                data'__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "data"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"data'"))
                      :: Data.ProtoLens.FieldDescriptor PubKey
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, type'__field_descriptor),
                 (Data.ProtoLens.Tag 2, data'__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _PubKey'_unknownFields
              (\ x__ y__ -> x__{_PubKey'_unknownFields = y__})
        defMessage
          = PubKey{_PubKey'type' = Data.ProtoLens.fieldDefault,
                   _PubKey'data' = Data.ProtoLens.fieldDefault,
                   _PubKey'_unknownFields = ([])}
        parseMessage
          = let loop :: PubKey -> Data.ProtoLens.Encoding.Bytes.Parser PubKey
                loop x
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 x)
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                10 -> do y <- (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                              Data.ProtoLens.Encoding.Bytes.getBytes
                                                                (Prelude.fromIntegral len)
                                                  Data.ProtoLens.Encoding.Bytes.runEither
                                                    (case Data.Text.Encoding.decodeUtf8' value of
                                                         Prelude.Left err -> Prelude.Left
                                                                               (Prelude.show err)
                                                         Prelude.Right r -> Prelude.Right r))
                                                Data.ProtoLens.Encoding.Bytes.<?> "type"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y
                                              x)
                                18 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.getBytes
                                                    (Prelude.fromIntegral len))
                                                Data.ProtoLens.Encoding.Bytes.<?> "data"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"data'") y
                                              x)
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "PubKey"
        buildMessage
          = (\ _x ->
               (let _v
                      = Lens.Family2.view (Data.ProtoLens.Field.field @"type'") _x
                  in
                  if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty else
                    (Data.ProtoLens.Encoding.Bytes.putVarInt 10) Data.Monoid.<>
                      (((\ bs ->
                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                             Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Prelude.. Data.Text.Encoding.encodeUtf8)
                        _v)
                 Data.Monoid.<>
                 (let _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"data'") _x
                    in
                    if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                      Data.Monoid.mempty else
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 18) Data.Monoid.<>
                        (\ bs ->
                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                             Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs)
                          _v)
                   Data.Monoid.<>
                   Data.ProtoLens.Encoding.Wire.buildFieldSet
                     (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData PubKey where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_PubKey'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_PubKey'type' x__)
                    (Control.DeepSeq.deepseq (_PubKey'data' x__) (()))))
{- | Fields :

    * 'Proto.Types_Fields.maybe'value' @:: Lens' Request (Prelude.Maybe Request'Value)@
    * 'Proto.Types_Fields.maybe'echo' @:: Lens' Request (Prelude.Maybe RequestEcho)@
    * 'Proto.Types_Fields.echo' @:: Lens' Request RequestEcho@
    * 'Proto.Types_Fields.maybe'flush' @:: Lens' Request (Prelude.Maybe RequestFlush)@
    * 'Proto.Types_Fields.flush' @:: Lens' Request RequestFlush@
    * 'Proto.Types_Fields.maybe'info' @:: Lens' Request (Prelude.Maybe RequestInfo)@
    * 'Proto.Types_Fields.info' @:: Lens' Request RequestInfo@
    * 'Proto.Types_Fields.maybe'setOption' @:: Lens' Request (Prelude.Maybe RequestSetOption)@
    * 'Proto.Types_Fields.setOption' @:: Lens' Request RequestSetOption@
    * 'Proto.Types_Fields.maybe'initChain' @:: Lens' Request (Prelude.Maybe RequestInitChain)@
    * 'Proto.Types_Fields.initChain' @:: Lens' Request RequestInitChain@
    * 'Proto.Types_Fields.maybe'query' @:: Lens' Request (Prelude.Maybe RequestQuery)@
    * 'Proto.Types_Fields.query' @:: Lens' Request RequestQuery@
    * 'Proto.Types_Fields.maybe'beginBlock' @:: Lens' Request (Prelude.Maybe RequestBeginBlock)@
    * 'Proto.Types_Fields.beginBlock' @:: Lens' Request RequestBeginBlock@
    * 'Proto.Types_Fields.maybe'checkTx' @:: Lens' Request (Prelude.Maybe RequestCheckTx)@
    * 'Proto.Types_Fields.checkTx' @:: Lens' Request RequestCheckTx@
    * 'Proto.Types_Fields.maybe'deliverTx' @:: Lens' Request (Prelude.Maybe RequestDeliverTx)@
    * 'Proto.Types_Fields.deliverTx' @:: Lens' Request RequestDeliverTx@
    * 'Proto.Types_Fields.maybe'endBlock' @:: Lens' Request (Prelude.Maybe RequestEndBlock)@
    * 'Proto.Types_Fields.endBlock' @:: Lens' Request RequestEndBlock@
    * 'Proto.Types_Fields.maybe'commit' @:: Lens' Request (Prelude.Maybe RequestCommit)@
    * 'Proto.Types_Fields.commit' @:: Lens' Request RequestCommit@
 -}
data Request = Request{_Request'value ::
                       !(Prelude.Maybe Request'Value),
                       _Request'_unknownFields :: !Data.ProtoLens.FieldSet}
                 deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Request where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
data Request'Value = Request'Echo !RequestEcho
                   | Request'Flush !RequestFlush
                   | Request'Info !RequestInfo
                   | Request'SetOption !RequestSetOption
                   | Request'InitChain !RequestInitChain
                   | Request'Query !RequestQuery
                   | Request'BeginBlock !RequestBeginBlock
                   | Request'CheckTx !RequestCheckTx
                   | Request'DeliverTx !RequestDeliverTx
                   | Request'EndBlock !RequestEndBlock
                   | Request'Commit !RequestCommit
                       deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Request "maybe'value"
           (Prelude.Maybe Request'Value)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Request'value
               (\ x__ y__ -> x__{_Request'value = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField Request "maybe'echo"
           (Prelude.Maybe RequestEcho)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Request'value
               (\ x__ y__ -> x__{_Request'value = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens
                (\ x__ ->
                   case x__ of
                       Prelude.Just (Request'Echo x__val) -> Prelude.Just x__val
                       _otherwise -> Prelude.Nothing)
                (\ _ y__ -> Prelude.fmap Request'Echo y__)
instance Data.ProtoLens.Field.HasField Request "echo" (RequestEcho)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Request'value
               (\ x__ y__ -> x__{_Request'value = y__}))
              Prelude..
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Request'Echo x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Request'Echo y__))
                Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Field.HasField Request "maybe'flush"
           (Prelude.Maybe RequestFlush)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Request'value
               (\ x__ y__ -> x__{_Request'value = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens
                (\ x__ ->
                   case x__ of
                       Prelude.Just (Request'Flush x__val) -> Prelude.Just x__val
                       _otherwise -> Prelude.Nothing)
                (\ _ y__ -> Prelude.fmap Request'Flush y__)
instance Data.ProtoLens.Field.HasField Request "flush"
           (RequestFlush)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Request'value
               (\ x__ y__ -> x__{_Request'value = y__}))
              Prelude..
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Request'Flush x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Request'Flush y__))
                Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Field.HasField Request "maybe'info"
           (Prelude.Maybe RequestInfo)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Request'value
               (\ x__ y__ -> x__{_Request'value = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens
                (\ x__ ->
                   case x__ of
                       Prelude.Just (Request'Info x__val) -> Prelude.Just x__val
                       _otherwise -> Prelude.Nothing)
                (\ _ y__ -> Prelude.fmap Request'Info y__)
instance Data.ProtoLens.Field.HasField Request "info" (RequestInfo)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Request'value
               (\ x__ y__ -> x__{_Request'value = y__}))
              Prelude..
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Request'Info x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Request'Info y__))
                Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Field.HasField Request "maybe'setOption"
           (Prelude.Maybe RequestSetOption)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Request'value
               (\ x__ y__ -> x__{_Request'value = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens
                (\ x__ ->
                   case x__ of
                       Prelude.Just (Request'SetOption x__val) -> Prelude.Just x__val
                       _otherwise -> Prelude.Nothing)
                (\ _ y__ -> Prelude.fmap Request'SetOption y__)
instance Data.ProtoLens.Field.HasField Request "setOption"
           (RequestSetOption)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Request'value
               (\ x__ y__ -> x__{_Request'value = y__}))
              Prelude..
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Request'SetOption x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Request'SetOption y__))
                Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Field.HasField Request "maybe'initChain"
           (Prelude.Maybe RequestInitChain)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Request'value
               (\ x__ y__ -> x__{_Request'value = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens
                (\ x__ ->
                   case x__ of
                       Prelude.Just (Request'InitChain x__val) -> Prelude.Just x__val
                       _otherwise -> Prelude.Nothing)
                (\ _ y__ -> Prelude.fmap Request'InitChain y__)
instance Data.ProtoLens.Field.HasField Request "initChain"
           (RequestInitChain)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Request'value
               (\ x__ y__ -> x__{_Request'value = y__}))
              Prelude..
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Request'InitChain x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Request'InitChain y__))
                Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Field.HasField Request "maybe'query"
           (Prelude.Maybe RequestQuery)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Request'value
               (\ x__ y__ -> x__{_Request'value = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens
                (\ x__ ->
                   case x__ of
                       Prelude.Just (Request'Query x__val) -> Prelude.Just x__val
                       _otherwise -> Prelude.Nothing)
                (\ _ y__ -> Prelude.fmap Request'Query y__)
instance Data.ProtoLens.Field.HasField Request "query"
           (RequestQuery)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Request'value
               (\ x__ y__ -> x__{_Request'value = y__}))
              Prelude..
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Request'Query x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Request'Query y__))
                Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Field.HasField Request "maybe'beginBlock"
           (Prelude.Maybe RequestBeginBlock)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Request'value
               (\ x__ y__ -> x__{_Request'value = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens
                (\ x__ ->
                   case x__ of
                       Prelude.Just (Request'BeginBlock x__val) -> Prelude.Just x__val
                       _otherwise -> Prelude.Nothing)
                (\ _ y__ -> Prelude.fmap Request'BeginBlock y__)
instance Data.ProtoLens.Field.HasField Request "beginBlock"
           (RequestBeginBlock)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Request'value
               (\ x__ y__ -> x__{_Request'value = y__}))
              Prelude..
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Request'BeginBlock x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Request'BeginBlock y__))
                Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Field.HasField Request "maybe'checkTx"
           (Prelude.Maybe RequestCheckTx)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Request'value
               (\ x__ y__ -> x__{_Request'value = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens
                (\ x__ ->
                   case x__ of
                       Prelude.Just (Request'CheckTx x__val) -> Prelude.Just x__val
                       _otherwise -> Prelude.Nothing)
                (\ _ y__ -> Prelude.fmap Request'CheckTx y__)
instance Data.ProtoLens.Field.HasField Request "checkTx"
           (RequestCheckTx)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Request'value
               (\ x__ y__ -> x__{_Request'value = y__}))
              Prelude..
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Request'CheckTx x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Request'CheckTx y__))
                Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Field.HasField Request "maybe'deliverTx"
           (Prelude.Maybe RequestDeliverTx)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Request'value
               (\ x__ y__ -> x__{_Request'value = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens
                (\ x__ ->
                   case x__ of
                       Prelude.Just (Request'DeliverTx x__val) -> Prelude.Just x__val
                       _otherwise -> Prelude.Nothing)
                (\ _ y__ -> Prelude.fmap Request'DeliverTx y__)
instance Data.ProtoLens.Field.HasField Request "deliverTx"
           (RequestDeliverTx)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Request'value
               (\ x__ y__ -> x__{_Request'value = y__}))
              Prelude..
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Request'DeliverTx x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Request'DeliverTx y__))
                Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Field.HasField Request "maybe'endBlock"
           (Prelude.Maybe RequestEndBlock)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Request'value
               (\ x__ y__ -> x__{_Request'value = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens
                (\ x__ ->
                   case x__ of
                       Prelude.Just (Request'EndBlock x__val) -> Prelude.Just x__val
                       _otherwise -> Prelude.Nothing)
                (\ _ y__ -> Prelude.fmap Request'EndBlock y__)
instance Data.ProtoLens.Field.HasField Request "endBlock"
           (RequestEndBlock)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Request'value
               (\ x__ y__ -> x__{_Request'value = y__}))
              Prelude..
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Request'EndBlock x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Request'EndBlock y__))
                Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Field.HasField Request "maybe'commit"
           (Prelude.Maybe RequestCommit)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Request'value
               (\ x__ y__ -> x__{_Request'value = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens
                (\ x__ ->
                   case x__ of
                       Prelude.Just (Request'Commit x__val) -> Prelude.Just x__val
                       _otherwise -> Prelude.Nothing)
                (\ _ y__ -> Prelude.fmap Request'Commit y__)
instance Data.ProtoLens.Field.HasField Request "commit"
           (RequestCommit)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Request'value
               (\ x__ y__ -> x__{_Request'value = y__}))
              Prelude..
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Request'Commit x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Request'Commit y__))
                Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Message Request where
        messageName _ = Data.Text.pack "types.Request"
        fieldsByTag
          = let echo__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "echo"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor RequestEcho)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'echo"))
                      :: Data.ProtoLens.FieldDescriptor Request
                flush__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "flush"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor RequestFlush)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'flush"))
                      :: Data.ProtoLens.FieldDescriptor Request
                info__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "info"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor RequestInfo)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'info"))
                      :: Data.ProtoLens.FieldDescriptor Request
                setOption__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "set_option"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor RequestSetOption)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'setOption"))
                      :: Data.ProtoLens.FieldDescriptor Request
                initChain__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "init_chain"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor RequestInitChain)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'initChain"))
                      :: Data.ProtoLens.FieldDescriptor Request
                query__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "query"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor RequestQuery)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'query"))
                      :: Data.ProtoLens.FieldDescriptor Request
                beginBlock__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "begin_block"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor RequestBeginBlock)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'beginBlock"))
                      :: Data.ProtoLens.FieldDescriptor Request
                checkTx__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "check_tx"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor RequestCheckTx)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'checkTx"))
                      :: Data.ProtoLens.FieldDescriptor Request
                deliverTx__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "deliver_tx"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor RequestDeliverTx)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'deliverTx"))
                      :: Data.ProtoLens.FieldDescriptor Request
                endBlock__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "end_block"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor RequestEndBlock)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'endBlock"))
                      :: Data.ProtoLens.FieldDescriptor Request
                commit__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "commit"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor RequestCommit)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'commit"))
                      :: Data.ProtoLens.FieldDescriptor Request
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 2, echo__field_descriptor),
                 (Data.ProtoLens.Tag 3, flush__field_descriptor),
                 (Data.ProtoLens.Tag 4, info__field_descriptor),
                 (Data.ProtoLens.Tag 5, setOption__field_descriptor),
                 (Data.ProtoLens.Tag 6, initChain__field_descriptor),
                 (Data.ProtoLens.Tag 7, query__field_descriptor),
                 (Data.ProtoLens.Tag 8, beginBlock__field_descriptor),
                 (Data.ProtoLens.Tag 9, checkTx__field_descriptor),
                 (Data.ProtoLens.Tag 19, deliverTx__field_descriptor),
                 (Data.ProtoLens.Tag 11, endBlock__field_descriptor),
                 (Data.ProtoLens.Tag 12, commit__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _Request'_unknownFields
              (\ x__ y__ -> x__{_Request'_unknownFields = y__})
        defMessage
          = Request{_Request'value = Prelude.Nothing,
                    _Request'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     Request -> Data.ProtoLens.Encoding.Bytes.Parser Request
                loop x
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 x)
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                18 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?> "echo"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"echo") y
                                              x)
                                26 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?> "flush"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"flush") y
                                              x)
                                34 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?> "info"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"info") y
                                              x)
                                42 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?> "set_option"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"setOption")
                                              y
                                              x)
                                50 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?> "init_chain"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"initChain")
                                              y
                                              x)
                                58 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?> "query"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"query") y
                                              x)
                                66 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?> "begin_block"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"beginBlock")
                                              y
                                              x)
                                74 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?> "check_tx"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"checkTx")
                                              y
                                              x)
                                154 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                   Data.ProtoLens.Encoding.Bytes.isolate
                                                     (Prelude.fromIntegral len)
                                                     Data.ProtoLens.parseMessage)
                                                 Data.ProtoLens.Encoding.Bytes.<?> "deliver_tx"
                                          loop
                                            (Lens.Family2.set
                                               (Data.ProtoLens.Field.field @"deliverTx")
                                               y
                                               x)
                                90 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?> "end_block"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"endBlock")
                                              y
                                              x)
                                98 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?> "commit"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"commit")
                                              y
                                              x)
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "Request"
        buildMessage
          = (\ _x ->
               (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x of
                    (Prelude.Nothing) -> Data.Monoid.mempty
                    Prelude.Just
                      (Request'Echo v) -> (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                                            Data.Monoid.<>
                                            (((\ bs ->
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                   Data.Monoid.<>
                                                   Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                               Prelude.. Data.ProtoLens.encodeMessage)
                                              v
                    Prelude.Just
                      (Request'Flush v) -> (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                                             Data.Monoid.<>
                                             (((\ bs ->
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                     (Prelude.fromIntegral
                                                        (Data.ByteString.length bs)))
                                                    Data.Monoid.<>
                                                    Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                Prelude.. Data.ProtoLens.encodeMessage)
                                               v
                    Prelude.Just
                      (Request'Info v) -> (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                            Data.Monoid.<>
                                            (((\ bs ->
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                   Data.Monoid.<>
                                                   Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                               Prelude.. Data.ProtoLens.encodeMessage)
                                              v
                    Prelude.Just
                      (Request'SetOption v) -> (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                  42)
                                                 Data.Monoid.<>
                                                 (((\ bs ->
                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                         (Prelude.fromIntegral
                                                            (Data.ByteString.length bs)))
                                                        Data.Monoid.<>
                                                        Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                    Prelude.. Data.ProtoLens.encodeMessage)
                                                   v
                    Prelude.Just
                      (Request'InitChain v) -> (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                  50)
                                                 Data.Monoid.<>
                                                 (((\ bs ->
                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                         (Prelude.fromIntegral
                                                            (Data.ByteString.length bs)))
                                                        Data.Monoid.<>
                                                        Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                    Prelude.. Data.ProtoLens.encodeMessage)
                                                   v
                    Prelude.Just
                      (Request'Query v) -> (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                             Data.Monoid.<>
                                             (((\ bs ->
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                     (Prelude.fromIntegral
                                                        (Data.ByteString.length bs)))
                                                    Data.Monoid.<>
                                                    Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                Prelude.. Data.ProtoLens.encodeMessage)
                                               v
                    Prelude.Just
                      (Request'BeginBlock v) -> (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                   66)
                                                  Data.Monoid.<>
                                                  (((\ bs ->
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          (Prelude.fromIntegral
                                                             (Data.ByteString.length bs)))
                                                         Data.Monoid.<>
                                                         Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                     Prelude.. Data.ProtoLens.encodeMessage)
                                                    v
                    Prelude.Just
                      (Request'CheckTx v) -> (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                                               Data.Monoid.<>
                                               (((\ bs ->
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       (Prelude.fromIntegral
                                                          (Data.ByteString.length bs)))
                                                      Data.Monoid.<>
                                                      Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                  Prelude.. Data.ProtoLens.encodeMessage)
                                                 v
                    Prelude.Just
                      (Request'DeliverTx v) -> (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                  154)
                                                 Data.Monoid.<>
                                                 (((\ bs ->
                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                         (Prelude.fromIntegral
                                                            (Data.ByteString.length bs)))
                                                        Data.Monoid.<>
                                                        Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                    Prelude.. Data.ProtoLens.encodeMessage)
                                                   v
                    Prelude.Just
                      (Request'EndBlock v) -> (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 90)
                                                Data.Monoid.<>
                                                (((\ bs ->
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                        (Prelude.fromIntegral
                                                           (Data.ByteString.length bs)))
                                                       Data.Monoid.<>
                                                       Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                   Prelude.. Data.ProtoLens.encodeMessage)
                                                  v
                    Prelude.Just
                      (Request'Commit v) -> (Data.ProtoLens.Encoding.Bytes.putVarInt 98)
                                              Data.Monoid.<>
                                              (((\ bs ->
                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                      (Prelude.fromIntegral
                                                         (Data.ByteString.length bs)))
                                                     Data.Monoid.<>
                                                     Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                 Prelude.. Data.ProtoLens.encodeMessage)
                                                v)
                 Data.Monoid.<>
                 Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Request where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_Request'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_Request'value x__) (())))
instance Control.DeepSeq.NFData Request'Value where
        rnf (Request'Echo x__) = Control.DeepSeq.rnf x__
        rnf (Request'Flush x__) = Control.DeepSeq.rnf x__
        rnf (Request'Info x__) = Control.DeepSeq.rnf x__
        rnf (Request'SetOption x__) = Control.DeepSeq.rnf x__
        rnf (Request'InitChain x__) = Control.DeepSeq.rnf x__
        rnf (Request'Query x__) = Control.DeepSeq.rnf x__
        rnf (Request'BeginBlock x__) = Control.DeepSeq.rnf x__
        rnf (Request'CheckTx x__) = Control.DeepSeq.rnf x__
        rnf (Request'DeliverTx x__) = Control.DeepSeq.rnf x__
        rnf (Request'EndBlock x__) = Control.DeepSeq.rnf x__
        rnf (Request'Commit x__) = Control.DeepSeq.rnf x__
_Request'Echo ::
              Data.ProtoLens.Prism.Prism' Request'Value RequestEcho
_Request'Echo
  = Data.ProtoLens.Prism.prism' Request'Echo
      (\ p__ ->
         case p__ of
             Request'Echo p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_Request'Flush ::
               Data.ProtoLens.Prism.Prism' Request'Value RequestFlush
_Request'Flush
  = Data.ProtoLens.Prism.prism' Request'Flush
      (\ p__ ->
         case p__ of
             Request'Flush p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_Request'Info ::
              Data.ProtoLens.Prism.Prism' Request'Value RequestInfo
_Request'Info
  = Data.ProtoLens.Prism.prism' Request'Info
      (\ p__ ->
         case p__ of
             Request'Info p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_Request'SetOption ::
                   Data.ProtoLens.Prism.Prism' Request'Value RequestSetOption
_Request'SetOption
  = Data.ProtoLens.Prism.prism' Request'SetOption
      (\ p__ ->
         case p__ of
             Request'SetOption p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_Request'InitChain ::
                   Data.ProtoLens.Prism.Prism' Request'Value RequestInitChain
_Request'InitChain
  = Data.ProtoLens.Prism.prism' Request'InitChain
      (\ p__ ->
         case p__ of
             Request'InitChain p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_Request'Query ::
               Data.ProtoLens.Prism.Prism' Request'Value RequestQuery
_Request'Query
  = Data.ProtoLens.Prism.prism' Request'Query
      (\ p__ ->
         case p__ of
             Request'Query p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_Request'BeginBlock ::
                    Data.ProtoLens.Prism.Prism' Request'Value RequestBeginBlock
_Request'BeginBlock
  = Data.ProtoLens.Prism.prism' Request'BeginBlock
      (\ p__ ->
         case p__ of
             Request'BeginBlock p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_Request'CheckTx ::
                 Data.ProtoLens.Prism.Prism' Request'Value RequestCheckTx
_Request'CheckTx
  = Data.ProtoLens.Prism.prism' Request'CheckTx
      (\ p__ ->
         case p__ of
             Request'CheckTx p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_Request'DeliverTx ::
                   Data.ProtoLens.Prism.Prism' Request'Value RequestDeliverTx
_Request'DeliverTx
  = Data.ProtoLens.Prism.prism' Request'DeliverTx
      (\ p__ ->
         case p__ of
             Request'DeliverTx p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_Request'EndBlock ::
                  Data.ProtoLens.Prism.Prism' Request'Value RequestEndBlock
_Request'EndBlock
  = Data.ProtoLens.Prism.prism' Request'EndBlock
      (\ p__ ->
         case p__ of
             Request'EndBlock p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_Request'Commit ::
                Data.ProtoLens.Prism.Prism' Request'Value RequestCommit
_Request'Commit
  = Data.ProtoLens.Prism.prism' Request'Commit
      (\ p__ ->
         case p__ of
             Request'Commit p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
{- | Fields :

    * 'Proto.Types_Fields.hash' @:: Lens' RequestBeginBlock Data.ByteString.ByteString@
    * 'Proto.Types_Fields.header' @:: Lens' RequestBeginBlock Header@
    * 'Proto.Types_Fields.maybe'header' @:: Lens' RequestBeginBlock (Prelude.Maybe Header)@
    * 'Proto.Types_Fields.lastCommitInfo' @:: Lens' RequestBeginBlock LastCommitInfo@
    * 'Proto.Types_Fields.maybe'lastCommitInfo' @:: Lens' RequestBeginBlock (Prelude.Maybe LastCommitInfo)@
    * 'Proto.Types_Fields.byzantineValidators' @:: Lens' RequestBeginBlock [Evidence]@
    * 'Proto.Types_Fields.vec'byzantineValidators' @:: Lens' RequestBeginBlock (Data.Vector.Vector Evidence)@
 -}
data RequestBeginBlock = RequestBeginBlock{_RequestBeginBlock'hash
                                           :: !Data.ByteString.ByteString,
                                           _RequestBeginBlock'header :: !(Prelude.Maybe Header),
                                           _RequestBeginBlock'lastCommitInfo ::
                                           !(Prelude.Maybe LastCommitInfo),
                                           _RequestBeginBlock'byzantineValidators ::
                                           !(Data.Vector.Vector Evidence),
                                           _RequestBeginBlock'_unknownFields ::
                                           !Data.ProtoLens.FieldSet}
                           deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RequestBeginBlock where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RequestBeginBlock "hash"
           (Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _RequestBeginBlock'hash
               (\ x__ y__ -> x__{_RequestBeginBlock'hash = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField RequestBeginBlock "header"
           (Header)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _RequestBeginBlock'header
               (\ x__ y__ -> x__{_RequestBeginBlock'header = y__}))
              Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Field.HasField RequestBeginBlock
           "maybe'header"
           (Prelude.Maybe Header)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _RequestBeginBlock'header
               (\ x__ y__ -> x__{_RequestBeginBlock'header = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField RequestBeginBlock
           "lastCommitInfo"
           (LastCommitInfo)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _RequestBeginBlock'lastCommitInfo
               (\ x__ y__ -> x__{_RequestBeginBlock'lastCommitInfo = y__}))
              Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Field.HasField RequestBeginBlock
           "maybe'lastCommitInfo"
           (Prelude.Maybe LastCommitInfo)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _RequestBeginBlock'lastCommitInfo
               (\ x__ y__ -> x__{_RequestBeginBlock'lastCommitInfo = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField RequestBeginBlock
           "byzantineValidators"
           ([Evidence])
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens
               _RequestBeginBlock'byzantineValidators
               (\ x__ y__ -> x__{_RequestBeginBlock'byzantineValidators = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens Data.Vector.Generic.toList
                (\ _ y__ -> Data.Vector.Generic.fromList y__)
instance Data.ProtoLens.Field.HasField RequestBeginBlock
           "vec'byzantineValidators"
           (Data.Vector.Vector Evidence)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens
               _RequestBeginBlock'byzantineValidators
               (\ x__ y__ -> x__{_RequestBeginBlock'byzantineValidators = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message RequestBeginBlock where
        messageName _ = Data.Text.pack "types.RequestBeginBlock"
        fieldsByTag
          = let hash__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "hash"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"hash"))
                      :: Data.ProtoLens.FieldDescriptor RequestBeginBlock
                header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor Header)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'header"))
                      :: Data.ProtoLens.FieldDescriptor RequestBeginBlock
                lastCommitInfo__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "last_commit_info"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor LastCommitInfo)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'lastCommitInfo"))
                      :: Data.ProtoLens.FieldDescriptor RequestBeginBlock
                byzantineValidators__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "byzantine_validators"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor Evidence)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Data.ProtoLens.Field.field @"byzantineValidators"))
                      :: Data.ProtoLens.FieldDescriptor RequestBeginBlock
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, hash__field_descriptor),
                 (Data.ProtoLens.Tag 2, header__field_descriptor),
                 (Data.ProtoLens.Tag 3, lastCommitInfo__field_descriptor),
                 (Data.ProtoLens.Tag 4, byzantineValidators__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _RequestBeginBlock'_unknownFields
              (\ x__ y__ -> x__{_RequestBeginBlock'_unknownFields = y__})
        defMessage
          = RequestBeginBlock{_RequestBeginBlock'hash =
                                Data.ProtoLens.fieldDefault,
                              _RequestBeginBlock'header = Prelude.Nothing,
                              _RequestBeginBlock'lastCommitInfo = Prelude.Nothing,
                              _RequestBeginBlock'byzantineValidators = Data.Vector.Generic.empty,
                              _RequestBeginBlock'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     RequestBeginBlock ->
                       Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector
                         Data.ProtoLens.Encoding.Growing.RealWorld
                         Evidence
                         -> Data.ProtoLens.Encoding.Bytes.Parser RequestBeginBlock
                loop x mutable'byzantineValidators
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do frozen'byzantineValidators <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                               mutable'byzantineValidators)
                            let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'byzantineValidators")
                                    frozen'byzantineValidators
                                    x))
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                10 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.getBytes
                                                    (Prelude.fromIntegral len))
                                                Data.ProtoLens.Encoding.Bytes.<?> "hash"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"hash") y
                                              x)
                                           mutable'byzantineValidators
                                18 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?> "header"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"header")
                                              y
                                              x)
                                           mutable'byzantineValidators
                                26 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?> "last_commit_info"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"lastCommitInfo")
                                              y
                                              x)
                                           mutable'byzantineValidators
                                34 -> do !y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                   Data.ProtoLens.Encoding.Bytes.isolate
                                                     (Prelude.fromIntegral len)
                                                     Data.ProtoLens.parseMessage)
                                                 Data.ProtoLens.Encoding.Bytes.<?>
                                                 "byzantine_validators"
                                         v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.append
                                                   mutable'byzantineValidators
                                                   y)
                                         loop x v
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
                                             mutable'byzantineValidators
              in
              (do mutable'byzantineValidators <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                   Data.ProtoLens.Encoding.Growing.new
                  loop Data.ProtoLens.defMessage mutable'byzantineValidators)
                Data.ProtoLens.Encoding.Bytes.<?> "RequestBeginBlock"
        buildMessage
          = (\ _x ->
               (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"hash") _x
                  in
                  if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty else
                    (Data.ProtoLens.Encoding.Bytes.putVarInt 10) Data.Monoid.<>
                      (\ bs ->
                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                           Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs)
                        _v)
                 Data.Monoid.<>
                 (case
                    Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'header") _x
                    of
                      (Prelude.Nothing) -> Data.Monoid.mempty
                      Prelude.Just _v -> (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                                           Data.Monoid.<>
                                           (((\ bs ->
                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                   (Prelude.fromIntegral
                                                      (Data.ByteString.length bs)))
                                                  Data.Monoid.<>
                                                  Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                              Prelude.. Data.ProtoLens.encodeMessage)
                                             _v)
                   Data.Monoid.<>
                   (case
                      Lens.Family2.view
                        (Data.ProtoLens.Field.field @"maybe'lastCommitInfo")
                        _x
                      of
                        (Prelude.Nothing) -> Data.Monoid.mempty
                        Prelude.Just _v -> (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                                             Data.Monoid.<>
                                             (((\ bs ->
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                     (Prelude.fromIntegral
                                                        (Data.ByteString.length bs)))
                                                    Data.Monoid.<>
                                                    Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                Prelude.. Data.ProtoLens.encodeMessage)
                                               _v)
                     Data.Monoid.<>
                     (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                        (\ _v ->
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 34) Data.Monoid.<>
                             (((\ bs ->
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Prelude.. Data.ProtoLens.encodeMessage)
                               _v)
                        (Lens.Family2.view
                           (Data.ProtoLens.Field.field @"vec'byzantineValidators")
                           _x))
                       Data.Monoid.<>
                       Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData RequestBeginBlock where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_RequestBeginBlock'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_RequestBeginBlock'hash x__)
                    (Control.DeepSeq.deepseq (_RequestBeginBlock'header x__)
                       (Control.DeepSeq.deepseq (_RequestBeginBlock'lastCommitInfo x__)
                          (Control.DeepSeq.deepseq
                             (_RequestBeginBlock'byzantineValidators x__)
                             (()))))))
{- | Fields :

    * 'Proto.Types_Fields.tx' @:: Lens' RequestCheckTx Data.ByteString.ByteString@
 -}
data RequestCheckTx = RequestCheckTx{_RequestCheckTx'tx ::
                                     !Data.ByteString.ByteString,
                                     _RequestCheckTx'_unknownFields :: !Data.ProtoLens.FieldSet}
                        deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RequestCheckTx where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RequestCheckTx "tx"
           (Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _RequestCheckTx'tx
               (\ x__ y__ -> x__{_RequestCheckTx'tx = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message RequestCheckTx where
        messageName _ = Data.Text.pack "types.RequestCheckTx"
        fieldsByTag
          = let tx__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "tx"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"tx"))
                      :: Data.ProtoLens.FieldDescriptor RequestCheckTx
              in Data.Map.fromList [(Data.ProtoLens.Tag 1, tx__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _RequestCheckTx'_unknownFields
              (\ x__ y__ -> x__{_RequestCheckTx'_unknownFields = y__})
        defMessage
          = RequestCheckTx{_RequestCheckTx'tx = Data.ProtoLens.fieldDefault,
                           _RequestCheckTx'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     RequestCheckTx ->
                       Data.ProtoLens.Encoding.Bytes.Parser RequestCheckTx
                loop x
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 x)
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                10 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.getBytes
                                                    (Prelude.fromIntegral len))
                                                Data.ProtoLens.Encoding.Bytes.<?> "tx"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"tx") y x)
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "RequestCheckTx"
        buildMessage
          = (\ _x ->
               (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"tx") _x
                  in
                  if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty else
                    (Data.ProtoLens.Encoding.Bytes.putVarInt 10) Data.Monoid.<>
                      (\ bs ->
                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                           Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs)
                        _v)
                 Data.Monoid.<>
                 Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData RequestCheckTx where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_RequestCheckTx'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_RequestCheckTx'tx x__) (())))
{- | Fields :

 -}
data RequestCommit = RequestCommit{_RequestCommit'_unknownFields ::
                                   !Data.ProtoLens.FieldSet}
                       deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RequestCommit where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message RequestCommit where
        messageName _ = Data.Text.pack "types.RequestCommit"
        fieldsByTag = let in Data.Map.fromList []
        unknownFields
          = Lens.Family2.Unchecked.lens _RequestCommit'_unknownFields
              (\ x__ y__ -> x__{_RequestCommit'_unknownFields = y__})
        defMessage = RequestCommit{_RequestCommit'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     RequestCommit -> Data.ProtoLens.Encoding.Bytes.Parser RequestCommit
                loop x
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 x)
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "RequestCommit"
        buildMessage
          = (\ _x ->
               Data.ProtoLens.Encoding.Wire.buildFieldSet
                 (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData RequestCommit where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_RequestCommit'_unknownFields x__) (()))
{- | Fields :

    * 'Proto.Types_Fields.tx' @:: Lens' RequestDeliverTx Data.ByteString.ByteString@
 -}
data RequestDeliverTx = RequestDeliverTx{_RequestDeliverTx'tx ::
                                         !Data.ByteString.ByteString,
                                         _RequestDeliverTx'_unknownFields ::
                                         !Data.ProtoLens.FieldSet}
                          deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RequestDeliverTx where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RequestDeliverTx "tx"
           (Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _RequestDeliverTx'tx
               (\ x__ y__ -> x__{_RequestDeliverTx'tx = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message RequestDeliverTx where
        messageName _ = Data.Text.pack "types.RequestDeliverTx"
        fieldsByTag
          = let tx__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "tx"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"tx"))
                      :: Data.ProtoLens.FieldDescriptor RequestDeliverTx
              in Data.Map.fromList [(Data.ProtoLens.Tag 1, tx__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _RequestDeliverTx'_unknownFields
              (\ x__ y__ -> x__{_RequestDeliverTx'_unknownFields = y__})
        defMessage
          = RequestDeliverTx{_RequestDeliverTx'tx =
                               Data.ProtoLens.fieldDefault,
                             _RequestDeliverTx'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     RequestDeliverTx ->
                       Data.ProtoLens.Encoding.Bytes.Parser RequestDeliverTx
                loop x
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 x)
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                10 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.getBytes
                                                    (Prelude.fromIntegral len))
                                                Data.ProtoLens.Encoding.Bytes.<?> "tx"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"tx") y x)
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "RequestDeliverTx"
        buildMessage
          = (\ _x ->
               (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"tx") _x
                  in
                  if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty else
                    (Data.ProtoLens.Encoding.Bytes.putVarInt 10) Data.Monoid.<>
                      (\ bs ->
                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                           Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs)
                        _v)
                 Data.Monoid.<>
                 Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData RequestDeliverTx where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_RequestDeliverTx'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_RequestDeliverTx'tx x__) (())))
{- | Fields :

    * 'Proto.Types_Fields.message' @:: Lens' RequestEcho Data.Text.Text@
 -}
data RequestEcho = RequestEcho{_RequestEcho'message ::
                               !Data.Text.Text,
                               _RequestEcho'_unknownFields :: !Data.ProtoLens.FieldSet}
                     deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RequestEcho where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RequestEcho "message"
           (Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _RequestEcho'message
               (\ x__ y__ -> x__{_RequestEcho'message = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message RequestEcho where
        messageName _ = Data.Text.pack "types.RequestEcho"
        fieldsByTag
          = let message__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "message"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"message"))
                      :: Data.ProtoLens.FieldDescriptor RequestEcho
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, message__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _RequestEcho'_unknownFields
              (\ x__ y__ -> x__{_RequestEcho'_unknownFields = y__})
        defMessage
          = RequestEcho{_RequestEcho'message = Data.ProtoLens.fieldDefault,
                        _RequestEcho'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     RequestEcho -> Data.ProtoLens.Encoding.Bytes.Parser RequestEcho
                loop x
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 x)
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                10 -> do y <- (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                              Data.ProtoLens.Encoding.Bytes.getBytes
                                                                (Prelude.fromIntegral len)
                                                  Data.ProtoLens.Encoding.Bytes.runEither
                                                    (case Data.Text.Encoding.decodeUtf8' value of
                                                         Prelude.Left err -> Prelude.Left
                                                                               (Prelude.show err)
                                                         Prelude.Right r -> Prelude.Right r))
                                                Data.ProtoLens.Encoding.Bytes.<?> "message"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"message")
                                              y
                                              x)
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "RequestEcho"
        buildMessage
          = (\ _x ->
               (let _v
                      = Lens.Family2.view (Data.ProtoLens.Field.field @"message") _x
                  in
                  if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty else
                    (Data.ProtoLens.Encoding.Bytes.putVarInt 10) Data.Monoid.<>
                      (((\ bs ->
                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                             Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Prelude.. Data.Text.Encoding.encodeUtf8)
                        _v)
                 Data.Monoid.<>
                 Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData RequestEcho where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_RequestEcho'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_RequestEcho'message x__) (())))
{- | Fields :

    * 'Proto.Types_Fields.height' @:: Lens' RequestEndBlock Data.Int.Int64@
 -}
data RequestEndBlock = RequestEndBlock{_RequestEndBlock'height ::
                                       !Data.Int.Int64,
                                       _RequestEndBlock'_unknownFields :: !Data.ProtoLens.FieldSet}
                         deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RequestEndBlock where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RequestEndBlock "height"
           (Data.Int.Int64)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _RequestEndBlock'height
               (\ x__ y__ -> x__{_RequestEndBlock'height = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message RequestEndBlock where
        messageName _ = Data.Text.pack "types.RequestEndBlock"
        fieldsByTag
          = let height__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "height"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"height"))
                      :: Data.ProtoLens.FieldDescriptor RequestEndBlock
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, height__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _RequestEndBlock'_unknownFields
              (\ x__ y__ -> x__{_RequestEndBlock'_unknownFields = y__})
        defMessage
          = RequestEndBlock{_RequestEndBlock'height =
                              Data.ProtoLens.fieldDefault,
                            _RequestEndBlock'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     RequestEndBlock ->
                       Data.ProtoLens.Encoding.Bytes.Parser RequestEndBlock
                loop x
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 x)
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                8 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                Data.ProtoLens.Encoding.Bytes.getVarInt)
                                               Data.ProtoLens.Encoding.Bytes.<?> "height"
                                        loop
                                          (Lens.Family2.set (Data.ProtoLens.Field.field @"height") y
                                             x)
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "RequestEndBlock"
        buildMessage
          = (\ _x ->
               (let _v
                      = Lens.Family2.view (Data.ProtoLens.Field.field @"height") _x
                  in
                  if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty else
                    (Data.ProtoLens.Encoding.Bytes.putVarInt 8) Data.Monoid.<>
                      ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                         Prelude.fromIntegral)
                        _v)
                 Data.Monoid.<>
                 Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData RequestEndBlock where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_RequestEndBlock'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_RequestEndBlock'height x__) (())))
{- | Fields :

 -}
data RequestFlush = RequestFlush{_RequestFlush'_unknownFields ::
                                 !Data.ProtoLens.FieldSet}
                      deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RequestFlush where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message RequestFlush where
        messageName _ = Data.Text.pack "types.RequestFlush"
        fieldsByTag = let in Data.Map.fromList []
        unknownFields
          = Lens.Family2.Unchecked.lens _RequestFlush'_unknownFields
              (\ x__ y__ -> x__{_RequestFlush'_unknownFields = y__})
        defMessage = RequestFlush{_RequestFlush'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     RequestFlush -> Data.ProtoLens.Encoding.Bytes.Parser RequestFlush
                loop x
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 x)
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "RequestFlush"
        buildMessage
          = (\ _x ->
               Data.ProtoLens.Encoding.Wire.buildFieldSet
                 (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData RequestFlush where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_RequestFlush'_unknownFields x__) (()))
{- | Fields :

    * 'Proto.Types_Fields.version' @:: Lens' RequestInfo Data.Text.Text@
    * 'Proto.Types_Fields.blockVersion' @:: Lens' RequestInfo Data.Word.Word64@
    * 'Proto.Types_Fields.p2pVersion' @:: Lens' RequestInfo Data.Word.Word64@
 -}
data RequestInfo = RequestInfo{_RequestInfo'version ::
                               !Data.Text.Text,
                               _RequestInfo'blockVersion :: !Data.Word.Word64,
                               _RequestInfo'p2pVersion :: !Data.Word.Word64,
                               _RequestInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
                     deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RequestInfo where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RequestInfo "version"
           (Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _RequestInfo'version
               (\ x__ y__ -> x__{_RequestInfo'version = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField RequestInfo "blockVersion"
           (Data.Word.Word64)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _RequestInfo'blockVersion
               (\ x__ y__ -> x__{_RequestInfo'blockVersion = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField RequestInfo "p2pVersion"
           (Data.Word.Word64)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _RequestInfo'p2pVersion
               (\ x__ y__ -> x__{_RequestInfo'p2pVersion = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message RequestInfo where
        messageName _ = Data.Text.pack "types.RequestInfo"
        fieldsByTag
          = let version__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "version"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"version"))
                      :: Data.ProtoLens.FieldDescriptor RequestInfo
                blockVersion__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "block_version"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"blockVersion"))
                      :: Data.ProtoLens.FieldDescriptor RequestInfo
                p2pVersion__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "p2p_version"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"p2pVersion"))
                      :: Data.ProtoLens.FieldDescriptor RequestInfo
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, version__field_descriptor),
                 (Data.ProtoLens.Tag 2, blockVersion__field_descriptor),
                 (Data.ProtoLens.Tag 3, p2pVersion__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _RequestInfo'_unknownFields
              (\ x__ y__ -> x__{_RequestInfo'_unknownFields = y__})
        defMessage
          = RequestInfo{_RequestInfo'version = Data.ProtoLens.fieldDefault,
                        _RequestInfo'blockVersion = Data.ProtoLens.fieldDefault,
                        _RequestInfo'p2pVersion = Data.ProtoLens.fieldDefault,
                        _RequestInfo'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     RequestInfo -> Data.ProtoLens.Encoding.Bytes.Parser RequestInfo
                loop x
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 x)
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                10 -> do y <- (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                              Data.ProtoLens.Encoding.Bytes.getBytes
                                                                (Prelude.fromIntegral len)
                                                  Data.ProtoLens.Encoding.Bytes.runEither
                                                    (case Data.Text.Encoding.decodeUtf8' value of
                                                         Prelude.Left err -> Prelude.Left
                                                                               (Prelude.show err)
                                                         Prelude.Right r -> Prelude.Right r))
                                                Data.ProtoLens.Encoding.Bytes.<?> "version"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"version")
                                              y
                                              x)
                                16 -> do y <- (Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                Data.ProtoLens.Encoding.Bytes.<?> "block_version"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"blockVersion")
                                              y
                                              x)
                                24 -> do y <- (Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                Data.ProtoLens.Encoding.Bytes.<?> "p2p_version"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"p2pVersion")
                                              y
                                              x)
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "RequestInfo"
        buildMessage
          = (\ _x ->
               (let _v
                      = Lens.Family2.view (Data.ProtoLens.Field.field @"version") _x
                  in
                  if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty else
                    (Data.ProtoLens.Encoding.Bytes.putVarInt 10) Data.Monoid.<>
                      (((\ bs ->
                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                             Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Prelude.. Data.Text.Encoding.encodeUtf8)
                        _v)
                 Data.Monoid.<>
                 (let _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"blockVersion") _x
                    in
                    if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                      Data.Monoid.mempty else
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 16) Data.Monoid.<>
                        Data.ProtoLens.Encoding.Bytes.putVarInt _v)
                   Data.Monoid.<>
                   (let _v
                          = Lens.Family2.view (Data.ProtoLens.Field.field @"p2pVersion") _x
                      in
                      if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                        Data.Monoid.mempty else
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 24) Data.Monoid.<>
                          Data.ProtoLens.Encoding.Bytes.putVarInt _v)
                     Data.Monoid.<>
                     Data.ProtoLens.Encoding.Wire.buildFieldSet
                       (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData RequestInfo where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_RequestInfo'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_RequestInfo'version x__)
                    (Control.DeepSeq.deepseq (_RequestInfo'blockVersion x__)
                       (Control.DeepSeq.deepseq (_RequestInfo'p2pVersion x__) (())))))
{- | Fields :

    * 'Proto.Types_Fields.time' @:: Lens' RequestInitChain
  Proto.Vendored.Google.Protobuf.Timestamp.Timestamp@
    * 'Proto.Types_Fields.maybe'time' @:: Lens' RequestInitChain
  (Prelude.Maybe Proto.Vendored.Google.Protobuf.Timestamp.Timestamp)@
    * 'Proto.Types_Fields.chainId' @:: Lens' RequestInitChain Data.Text.Text@
    * 'Proto.Types_Fields.consensusParams' @:: Lens' RequestInitChain ConsensusParams@
    * 'Proto.Types_Fields.maybe'consensusParams' @:: Lens' RequestInitChain (Prelude.Maybe ConsensusParams)@
    * 'Proto.Types_Fields.validators' @:: Lens' RequestInitChain [ValidatorUpdate]@
    * 'Proto.Types_Fields.vec'validators' @:: Lens' RequestInitChain (Data.Vector.Vector ValidatorUpdate)@
    * 'Proto.Types_Fields.appStateBytes' @:: Lens' RequestInitChain Data.ByteString.ByteString@
 -}
data RequestInitChain = RequestInitChain{_RequestInitChain'time ::
                                         !(Prelude.Maybe
                                             Proto.Vendored.Google.Protobuf.Timestamp.Timestamp),
                                         _RequestInitChain'chainId :: !Data.Text.Text,
                                         _RequestInitChain'consensusParams ::
                                         !(Prelude.Maybe ConsensusParams),
                                         _RequestInitChain'validators ::
                                         !(Data.Vector.Vector ValidatorUpdate),
                                         _RequestInitChain'appStateBytes ::
                                         !Data.ByteString.ByteString,
                                         _RequestInitChain'_unknownFields ::
                                         !Data.ProtoLens.FieldSet}
                          deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RequestInitChain where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RequestInitChain "time"
           (Proto.Vendored.Google.Protobuf.Timestamp.Timestamp)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _RequestInitChain'time
               (\ x__ y__ -> x__{_RequestInitChain'time = y__}))
              Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Field.HasField RequestInitChain
           "maybe'time"
           (Prelude.Maybe Proto.Vendored.Google.Protobuf.Timestamp.Timestamp)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _RequestInitChain'time
               (\ x__ y__ -> x__{_RequestInitChain'time = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField RequestInitChain "chainId"
           (Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _RequestInitChain'chainId
               (\ x__ y__ -> x__{_RequestInitChain'chainId = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField RequestInitChain
           "consensusParams"
           (ConsensusParams)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _RequestInitChain'consensusParams
               (\ x__ y__ -> x__{_RequestInitChain'consensusParams = y__}))
              Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Field.HasField RequestInitChain
           "maybe'consensusParams"
           (Prelude.Maybe ConsensusParams)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _RequestInitChain'consensusParams
               (\ x__ y__ -> x__{_RequestInitChain'consensusParams = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField RequestInitChain
           "validators"
           ([ValidatorUpdate])
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _RequestInitChain'validators
               (\ x__ y__ -> x__{_RequestInitChain'validators = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens Data.Vector.Generic.toList
                (\ _ y__ -> Data.Vector.Generic.fromList y__)
instance Data.ProtoLens.Field.HasField RequestInitChain
           "vec'validators"
           (Data.Vector.Vector ValidatorUpdate)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _RequestInitChain'validators
               (\ x__ y__ -> x__{_RequestInitChain'validators = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField RequestInitChain
           "appStateBytes"
           (Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _RequestInitChain'appStateBytes
               (\ x__ y__ -> x__{_RequestInitChain'appStateBytes = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message RequestInitChain where
        messageName _ = Data.Text.pack "types.RequestInitChain"
        fieldsByTag
          = let time__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "time"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Vendored.Google.Protobuf.Timestamp.Timestamp)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'time"))
                      :: Data.ProtoLens.FieldDescriptor RequestInitChain
                chainId__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "chain_id"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"chainId"))
                      :: Data.ProtoLens.FieldDescriptor RequestInitChain
                consensusParams__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "consensus_params"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ConsensusParams)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'consensusParams"))
                      :: Data.ProtoLens.FieldDescriptor RequestInitChain
                validators__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "validators"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ValidatorUpdate)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Data.ProtoLens.Field.field @"validators"))
                      :: Data.ProtoLens.FieldDescriptor RequestInitChain
                appStateBytes__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "app_state_bytes"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"appStateBytes"))
                      :: Data.ProtoLens.FieldDescriptor RequestInitChain
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, time__field_descriptor),
                 (Data.ProtoLens.Tag 2, chainId__field_descriptor),
                 (Data.ProtoLens.Tag 3, consensusParams__field_descriptor),
                 (Data.ProtoLens.Tag 4, validators__field_descriptor),
                 (Data.ProtoLens.Tag 5, appStateBytes__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _RequestInitChain'_unknownFields
              (\ x__ y__ -> x__{_RequestInitChain'_unknownFields = y__})
        defMessage
          = RequestInitChain{_RequestInitChain'time = Prelude.Nothing,
                             _RequestInitChain'chainId = Data.ProtoLens.fieldDefault,
                             _RequestInitChain'consensusParams = Prelude.Nothing,
                             _RequestInitChain'validators = Data.Vector.Generic.empty,
                             _RequestInitChain'appStateBytes = Data.ProtoLens.fieldDefault,
                             _RequestInitChain'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     RequestInitChain ->
                       Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector
                         Data.ProtoLens.Encoding.Growing.RealWorld
                         ValidatorUpdate
                         -> Data.ProtoLens.Encoding.Bytes.Parser RequestInitChain
                loop x mutable'validators
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do frozen'validators <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                   (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                      mutable'validators)
                            let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 (Lens.Family2.set (Data.ProtoLens.Field.field @"vec'validators")
                                    frozen'validators
                                    x))
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                10 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?> "time"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"time") y
                                              x)
                                           mutable'validators
                                18 -> do y <- (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                              Data.ProtoLens.Encoding.Bytes.getBytes
                                                                (Prelude.fromIntegral len)
                                                  Data.ProtoLens.Encoding.Bytes.runEither
                                                    (case Data.Text.Encoding.decodeUtf8' value of
                                                         Prelude.Left err -> Prelude.Left
                                                                               (Prelude.show err)
                                                         Prelude.Right r -> Prelude.Right r))
                                                Data.ProtoLens.Encoding.Bytes.<?> "chain_id"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"chainId")
                                              y
                                              x)
                                           mutable'validators
                                26 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?> "consensus_params"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"consensusParams")
                                              y
                                              x)
                                           mutable'validators
                                34 -> do !y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                   Data.ProtoLens.Encoding.Bytes.isolate
                                                     (Prelude.fromIntegral len)
                                                     Data.ProtoLens.parseMessage)
                                                 Data.ProtoLens.Encoding.Bytes.<?> "validators"
                                         v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.append
                                                   mutable'validators
                                                   y)
                                         loop x v
                                42 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.getBytes
                                                    (Prelude.fromIntegral len))
                                                Data.ProtoLens.Encoding.Bytes.<?> "app_state_bytes"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"appStateBytes")
                                              y
                                              x)
                                           mutable'validators
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
                                             mutable'validators
              in
              (do mutable'validators <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          Data.ProtoLens.Encoding.Growing.new
                  loop Data.ProtoLens.defMessage mutable'validators)
                Data.ProtoLens.Encoding.Bytes.<?> "RequestInitChain"
        buildMessage
          = (\ _x ->
               (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'time") _x of
                    (Prelude.Nothing) -> Data.Monoid.mempty
                    Prelude.Just _v -> (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                                         Data.Monoid.<>
                                         (((\ bs ->
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                                Data.Monoid.<>
                                                Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                            Prelude.. Data.ProtoLens.encodeMessage)
                                           _v)
                 Data.Monoid.<>
                 (let _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"chainId") _x
                    in
                    if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                      Data.Monoid.mempty else
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 18) Data.Monoid.<>
                        (((\ bs ->
                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                (Prelude.fromIntegral (Data.ByteString.length bs)))
                               Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           Prelude.. Data.Text.Encoding.encodeUtf8)
                          _v)
                   Data.Monoid.<>
                   (case
                      Lens.Family2.view
                        (Data.ProtoLens.Field.field @"maybe'consensusParams")
                        _x
                      of
                        (Prelude.Nothing) -> Data.Monoid.mempty
                        Prelude.Just _v -> (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                                             Data.Monoid.<>
                                             (((\ bs ->
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                     (Prelude.fromIntegral
                                                        (Data.ByteString.length bs)))
                                                    Data.Monoid.<>
                                                    Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                Prelude.. Data.ProtoLens.encodeMessage)
                                               _v)
                     Data.Monoid.<>
                     (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                        (\ _v ->
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 34) Data.Monoid.<>
                             (((\ bs ->
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Prelude.. Data.ProtoLens.encodeMessage)
                               _v)
                        (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'validators")
                           _x))
                       Data.Monoid.<>
                       (let _v
                              = Lens.Family2.view (Data.ProtoLens.Field.field @"appStateBytes")
                                  _x
                          in
                          if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                            Data.Monoid.mempty else
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 42) Data.Monoid.<>
                              (\ bs ->
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs)
                                _v)
                         Data.Monoid.<>
                         Data.ProtoLens.Encoding.Wire.buildFieldSet
                           (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData RequestInitChain where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_RequestInitChain'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_RequestInitChain'time x__)
                    (Control.DeepSeq.deepseq (_RequestInitChain'chainId x__)
                       (Control.DeepSeq.deepseq (_RequestInitChain'consensusParams x__)
                          (Control.DeepSeq.deepseq (_RequestInitChain'validators x__)
                             (Control.DeepSeq.deepseq (_RequestInitChain'appStateBytes x__)
                                (())))))))
{- | Fields :

    * 'Proto.Types_Fields.data'' @:: Lens' RequestQuery Data.ByteString.ByteString@
    * 'Proto.Types_Fields.path' @:: Lens' RequestQuery Data.Text.Text@
    * 'Proto.Types_Fields.height' @:: Lens' RequestQuery Data.Int.Int64@
    * 'Proto.Types_Fields.prove' @:: Lens' RequestQuery Prelude.Bool@
 -}
data RequestQuery = RequestQuery{_RequestQuery'data' ::
                                 !Data.ByteString.ByteString,
                                 _RequestQuery'path :: !Data.Text.Text,
                                 _RequestQuery'height :: !Data.Int.Int64,
                                 _RequestQuery'prove :: !Prelude.Bool,
                                 _RequestQuery'_unknownFields :: !Data.ProtoLens.FieldSet}
                      deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RequestQuery where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RequestQuery "data'"
           (Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _RequestQuery'data'
               (\ x__ y__ -> x__{_RequestQuery'data' = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField RequestQuery "path"
           (Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _RequestQuery'path
               (\ x__ y__ -> x__{_RequestQuery'path = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField RequestQuery "height"
           (Data.Int.Int64)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _RequestQuery'height
               (\ x__ y__ -> x__{_RequestQuery'height = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField RequestQuery "prove"
           (Prelude.Bool)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _RequestQuery'prove
               (\ x__ y__ -> x__{_RequestQuery'prove = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message RequestQuery where
        messageName _ = Data.Text.pack "types.RequestQuery"
        fieldsByTag
          = let data'__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "data"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"data'"))
                      :: Data.ProtoLens.FieldDescriptor RequestQuery
                path__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "path"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"path"))
                      :: Data.ProtoLens.FieldDescriptor RequestQuery
                height__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "height"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"height"))
                      :: Data.ProtoLens.FieldDescriptor RequestQuery
                prove__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "prove"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"prove"))
                      :: Data.ProtoLens.FieldDescriptor RequestQuery
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, data'__field_descriptor),
                 (Data.ProtoLens.Tag 2, path__field_descriptor),
                 (Data.ProtoLens.Tag 3, height__field_descriptor),
                 (Data.ProtoLens.Tag 4, prove__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _RequestQuery'_unknownFields
              (\ x__ y__ -> x__{_RequestQuery'_unknownFields = y__})
        defMessage
          = RequestQuery{_RequestQuery'data' = Data.ProtoLens.fieldDefault,
                         _RequestQuery'path = Data.ProtoLens.fieldDefault,
                         _RequestQuery'height = Data.ProtoLens.fieldDefault,
                         _RequestQuery'prove = Data.ProtoLens.fieldDefault,
                         _RequestQuery'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     RequestQuery -> Data.ProtoLens.Encoding.Bytes.Parser RequestQuery
                loop x
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 x)
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                10 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.getBytes
                                                    (Prelude.fromIntegral len))
                                                Data.ProtoLens.Encoding.Bytes.<?> "data"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"data'") y
                                              x)
                                18 -> do y <- (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                              Data.ProtoLens.Encoding.Bytes.getBytes
                                                                (Prelude.fromIntegral len)
                                                  Data.ProtoLens.Encoding.Bytes.runEither
                                                    (case Data.Text.Encoding.decodeUtf8' value of
                                                         Prelude.Left err -> Prelude.Left
                                                                               (Prelude.show err)
                                                         Prelude.Right r -> Prelude.Right r))
                                                Data.ProtoLens.Encoding.Bytes.<?> "path"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"path") y
                                              x)
                                24 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                 Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                Data.ProtoLens.Encoding.Bytes.<?> "height"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"height")
                                              y
                                              x)
                                32 -> do y <- (Prelude.fmap ((Prelude./=) 0)
                                                 Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                Data.ProtoLens.Encoding.Bytes.<?> "prove"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"prove") y
                                              x)
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "RequestQuery"
        buildMessage
          = (\ _x ->
               (let _v
                      = Lens.Family2.view (Data.ProtoLens.Field.field @"data'") _x
                  in
                  if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty else
                    (Data.ProtoLens.Encoding.Bytes.putVarInt 10) Data.Monoid.<>
                      (\ bs ->
                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                           Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs)
                        _v)
                 Data.Monoid.<>
                 (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"path") _x
                    in
                    if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                      Data.Monoid.mempty else
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 18) Data.Monoid.<>
                        (((\ bs ->
                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                (Prelude.fromIntegral (Data.ByteString.length bs)))
                               Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           Prelude.. Data.Text.Encoding.encodeUtf8)
                          _v)
                   Data.Monoid.<>
                   (let _v
                          = Lens.Family2.view (Data.ProtoLens.Field.field @"height") _x
                      in
                      if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                        Data.Monoid.mempty else
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 24) Data.Monoid.<>
                          ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                             Prelude.fromIntegral)
                            _v)
                     Data.Monoid.<>
                     (let _v
                            = Lens.Family2.view (Data.ProtoLens.Field.field @"prove") _x
                        in
                        if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty else
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 32) Data.Monoid.<>
                            ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                               (\ b -> if b then 1 else 0))
                              _v)
                       Data.Monoid.<>
                       Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData RequestQuery where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_RequestQuery'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_RequestQuery'data' x__)
                    (Control.DeepSeq.deepseq (_RequestQuery'path x__)
                       (Control.DeepSeq.deepseq (_RequestQuery'height x__)
                          (Control.DeepSeq.deepseq (_RequestQuery'prove x__) (()))))))
{- | Fields :

    * 'Proto.Types_Fields.key' @:: Lens' RequestSetOption Data.Text.Text@
    * 'Proto.Types_Fields.value' @:: Lens' RequestSetOption Data.Text.Text@
 -}
data RequestSetOption = RequestSetOption{_RequestSetOption'key ::
                                         !Data.Text.Text,
                                         _RequestSetOption'value :: !Data.Text.Text,
                                         _RequestSetOption'_unknownFields ::
                                         !Data.ProtoLens.FieldSet}
                          deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RequestSetOption where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RequestSetOption "key"
           (Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _RequestSetOption'key
               (\ x__ y__ -> x__{_RequestSetOption'key = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField RequestSetOption "value"
           (Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _RequestSetOption'value
               (\ x__ y__ -> x__{_RequestSetOption'value = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message RequestSetOption where
        messageName _ = Data.Text.pack "types.RequestSetOption"
        fieldsByTag
          = let key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"key"))
                      :: Data.ProtoLens.FieldDescriptor RequestSetOption
                value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"value"))
                      :: Data.ProtoLens.FieldDescriptor RequestSetOption
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, key__field_descriptor),
                 (Data.ProtoLens.Tag 2, value__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _RequestSetOption'_unknownFields
              (\ x__ y__ -> x__{_RequestSetOption'_unknownFields = y__})
        defMessage
          = RequestSetOption{_RequestSetOption'key =
                               Data.ProtoLens.fieldDefault,
                             _RequestSetOption'value = Data.ProtoLens.fieldDefault,
                             _RequestSetOption'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     RequestSetOption ->
                       Data.ProtoLens.Encoding.Bytes.Parser RequestSetOption
                loop x
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 x)
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                10 -> do y <- (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                              Data.ProtoLens.Encoding.Bytes.getBytes
                                                                (Prelude.fromIntegral len)
                                                  Data.ProtoLens.Encoding.Bytes.runEither
                                                    (case Data.Text.Encoding.decodeUtf8' value of
                                                         Prelude.Left err -> Prelude.Left
                                                                               (Prelude.show err)
                                                         Prelude.Right r -> Prelude.Right r))
                                                Data.ProtoLens.Encoding.Bytes.<?> "key"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y
                                              x)
                                18 -> do y <- (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                              Data.ProtoLens.Encoding.Bytes.getBytes
                                                                (Prelude.fromIntegral len)
                                                  Data.ProtoLens.Encoding.Bytes.runEither
                                                    (case Data.Text.Encoding.decodeUtf8' value of
                                                         Prelude.Left err -> Prelude.Left
                                                                               (Prelude.show err)
                                                         Prelude.Right r -> Prelude.Right r))
                                                Data.ProtoLens.Encoding.Bytes.<?> "value"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y
                                              x)
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "RequestSetOption"
        buildMessage
          = (\ _x ->
               (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
                  in
                  if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty else
                    (Data.ProtoLens.Encoding.Bytes.putVarInt 10) Data.Monoid.<>
                      (((\ bs ->
                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                             Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Prelude.. Data.Text.Encoding.encodeUtf8)
                        _v)
                 Data.Monoid.<>
                 (let _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
                    in
                    if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                      Data.Monoid.mempty else
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 18) Data.Monoid.<>
                        (((\ bs ->
                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                (Prelude.fromIntegral (Data.ByteString.length bs)))
                               Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           Prelude.. Data.Text.Encoding.encodeUtf8)
                          _v)
                   Data.Monoid.<>
                   Data.ProtoLens.Encoding.Wire.buildFieldSet
                     (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData RequestSetOption where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_RequestSetOption'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_RequestSetOption'key x__)
                    (Control.DeepSeq.deepseq (_RequestSetOption'value x__) (()))))
{- | Fields :

    * 'Proto.Types_Fields.maybe'value' @:: Lens' Response (Prelude.Maybe Response'Value)@
    * 'Proto.Types_Fields.maybe'exception' @:: Lens' Response (Prelude.Maybe ResponseException)@
    * 'Proto.Types_Fields.exception' @:: Lens' Response ResponseException@
    * 'Proto.Types_Fields.maybe'echo' @:: Lens' Response (Prelude.Maybe ResponseEcho)@
    * 'Proto.Types_Fields.echo' @:: Lens' Response ResponseEcho@
    * 'Proto.Types_Fields.maybe'flush' @:: Lens' Response (Prelude.Maybe ResponseFlush)@
    * 'Proto.Types_Fields.flush' @:: Lens' Response ResponseFlush@
    * 'Proto.Types_Fields.maybe'info' @:: Lens' Response (Prelude.Maybe ResponseInfo)@
    * 'Proto.Types_Fields.info' @:: Lens' Response ResponseInfo@
    * 'Proto.Types_Fields.maybe'setOption' @:: Lens' Response (Prelude.Maybe ResponseSetOption)@
    * 'Proto.Types_Fields.setOption' @:: Lens' Response ResponseSetOption@
    * 'Proto.Types_Fields.maybe'initChain' @:: Lens' Response (Prelude.Maybe ResponseInitChain)@
    * 'Proto.Types_Fields.initChain' @:: Lens' Response ResponseInitChain@
    * 'Proto.Types_Fields.maybe'query' @:: Lens' Response (Prelude.Maybe ResponseQuery)@
    * 'Proto.Types_Fields.query' @:: Lens' Response ResponseQuery@
    * 'Proto.Types_Fields.maybe'beginBlock' @:: Lens' Response (Prelude.Maybe ResponseBeginBlock)@
    * 'Proto.Types_Fields.beginBlock' @:: Lens' Response ResponseBeginBlock@
    * 'Proto.Types_Fields.maybe'checkTx' @:: Lens' Response (Prelude.Maybe ResponseCheckTx)@
    * 'Proto.Types_Fields.checkTx' @:: Lens' Response ResponseCheckTx@
    * 'Proto.Types_Fields.maybe'deliverTx' @:: Lens' Response (Prelude.Maybe ResponseDeliverTx)@
    * 'Proto.Types_Fields.deliverTx' @:: Lens' Response ResponseDeliverTx@
    * 'Proto.Types_Fields.maybe'endBlock' @:: Lens' Response (Prelude.Maybe ResponseEndBlock)@
    * 'Proto.Types_Fields.endBlock' @:: Lens' Response ResponseEndBlock@
    * 'Proto.Types_Fields.maybe'commit' @:: Lens' Response (Prelude.Maybe ResponseCommit)@
    * 'Proto.Types_Fields.commit' @:: Lens' Response ResponseCommit@
 -}
data Response = Response{_Response'value ::
                         !(Prelude.Maybe Response'Value),
                         _Response'_unknownFields :: !Data.ProtoLens.FieldSet}
                  deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Response where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
data Response'Value = Response'Exception !ResponseException
                    | Response'Echo !ResponseEcho
                    | Response'Flush !ResponseFlush
                    | Response'Info !ResponseInfo
                    | Response'SetOption !ResponseSetOption
                    | Response'InitChain !ResponseInitChain
                    | Response'Query !ResponseQuery
                    | Response'BeginBlock !ResponseBeginBlock
                    | Response'CheckTx !ResponseCheckTx
                    | Response'DeliverTx !ResponseDeliverTx
                    | Response'EndBlock !ResponseEndBlock
                    | Response'Commit !ResponseCommit
                        deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Response "maybe'value"
           (Prelude.Maybe Response'Value)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Response'value
               (\ x__ y__ -> x__{_Response'value = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField Response "maybe'exception"
           (Prelude.Maybe ResponseException)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Response'value
               (\ x__ y__ -> x__{_Response'value = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens
                (\ x__ ->
                   case x__ of
                       Prelude.Just (Response'Exception x__val) -> Prelude.Just x__val
                       _otherwise -> Prelude.Nothing)
                (\ _ y__ -> Prelude.fmap Response'Exception y__)
instance Data.ProtoLens.Field.HasField Response "exception"
           (ResponseException)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Response'value
               (\ x__ y__ -> x__{_Response'value = y__}))
              Prelude..
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Response'Exception x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Response'Exception y__))
                Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Field.HasField Response "maybe'echo"
           (Prelude.Maybe ResponseEcho)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Response'value
               (\ x__ y__ -> x__{_Response'value = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens
                (\ x__ ->
                   case x__ of
                       Prelude.Just (Response'Echo x__val) -> Prelude.Just x__val
                       _otherwise -> Prelude.Nothing)
                (\ _ y__ -> Prelude.fmap Response'Echo y__)
instance Data.ProtoLens.Field.HasField Response "echo"
           (ResponseEcho)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Response'value
               (\ x__ y__ -> x__{_Response'value = y__}))
              Prelude..
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Response'Echo x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Response'Echo y__))
                Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Field.HasField Response "maybe'flush"
           (Prelude.Maybe ResponseFlush)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Response'value
               (\ x__ y__ -> x__{_Response'value = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens
                (\ x__ ->
                   case x__ of
                       Prelude.Just (Response'Flush x__val) -> Prelude.Just x__val
                       _otherwise -> Prelude.Nothing)
                (\ _ y__ -> Prelude.fmap Response'Flush y__)
instance Data.ProtoLens.Field.HasField Response "flush"
           (ResponseFlush)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Response'value
               (\ x__ y__ -> x__{_Response'value = y__}))
              Prelude..
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Response'Flush x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Response'Flush y__))
                Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Field.HasField Response "maybe'info"
           (Prelude.Maybe ResponseInfo)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Response'value
               (\ x__ y__ -> x__{_Response'value = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens
                (\ x__ ->
                   case x__ of
                       Prelude.Just (Response'Info x__val) -> Prelude.Just x__val
                       _otherwise -> Prelude.Nothing)
                (\ _ y__ -> Prelude.fmap Response'Info y__)
instance Data.ProtoLens.Field.HasField Response "info"
           (ResponseInfo)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Response'value
               (\ x__ y__ -> x__{_Response'value = y__}))
              Prelude..
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Response'Info x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Response'Info y__))
                Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Field.HasField Response "maybe'setOption"
           (Prelude.Maybe ResponseSetOption)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Response'value
               (\ x__ y__ -> x__{_Response'value = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens
                (\ x__ ->
                   case x__ of
                       Prelude.Just (Response'SetOption x__val) -> Prelude.Just x__val
                       _otherwise -> Prelude.Nothing)
                (\ _ y__ -> Prelude.fmap Response'SetOption y__)
instance Data.ProtoLens.Field.HasField Response "setOption"
           (ResponseSetOption)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Response'value
               (\ x__ y__ -> x__{_Response'value = y__}))
              Prelude..
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Response'SetOption x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Response'SetOption y__))
                Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Field.HasField Response "maybe'initChain"
           (Prelude.Maybe ResponseInitChain)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Response'value
               (\ x__ y__ -> x__{_Response'value = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens
                (\ x__ ->
                   case x__ of
                       Prelude.Just (Response'InitChain x__val) -> Prelude.Just x__val
                       _otherwise -> Prelude.Nothing)
                (\ _ y__ -> Prelude.fmap Response'InitChain y__)
instance Data.ProtoLens.Field.HasField Response "initChain"
           (ResponseInitChain)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Response'value
               (\ x__ y__ -> x__{_Response'value = y__}))
              Prelude..
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Response'InitChain x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Response'InitChain y__))
                Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Field.HasField Response "maybe'query"
           (Prelude.Maybe ResponseQuery)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Response'value
               (\ x__ y__ -> x__{_Response'value = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens
                (\ x__ ->
                   case x__ of
                       Prelude.Just (Response'Query x__val) -> Prelude.Just x__val
                       _otherwise -> Prelude.Nothing)
                (\ _ y__ -> Prelude.fmap Response'Query y__)
instance Data.ProtoLens.Field.HasField Response "query"
           (ResponseQuery)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Response'value
               (\ x__ y__ -> x__{_Response'value = y__}))
              Prelude..
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Response'Query x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Response'Query y__))
                Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Field.HasField Response "maybe'beginBlock"
           (Prelude.Maybe ResponseBeginBlock)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Response'value
               (\ x__ y__ -> x__{_Response'value = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens
                (\ x__ ->
                   case x__ of
                       Prelude.Just (Response'BeginBlock x__val) -> Prelude.Just x__val
                       _otherwise -> Prelude.Nothing)
                (\ _ y__ -> Prelude.fmap Response'BeginBlock y__)
instance Data.ProtoLens.Field.HasField Response "beginBlock"
           (ResponseBeginBlock)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Response'value
               (\ x__ y__ -> x__{_Response'value = y__}))
              Prelude..
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Response'BeginBlock x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Response'BeginBlock y__))
                Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Field.HasField Response "maybe'checkTx"
           (Prelude.Maybe ResponseCheckTx)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Response'value
               (\ x__ y__ -> x__{_Response'value = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens
                (\ x__ ->
                   case x__ of
                       Prelude.Just (Response'CheckTx x__val) -> Prelude.Just x__val
                       _otherwise -> Prelude.Nothing)
                (\ _ y__ -> Prelude.fmap Response'CheckTx y__)
instance Data.ProtoLens.Field.HasField Response "checkTx"
           (ResponseCheckTx)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Response'value
               (\ x__ y__ -> x__{_Response'value = y__}))
              Prelude..
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Response'CheckTx x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Response'CheckTx y__))
                Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Field.HasField Response "maybe'deliverTx"
           (Prelude.Maybe ResponseDeliverTx)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Response'value
               (\ x__ y__ -> x__{_Response'value = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens
                (\ x__ ->
                   case x__ of
                       Prelude.Just (Response'DeliverTx x__val) -> Prelude.Just x__val
                       _otherwise -> Prelude.Nothing)
                (\ _ y__ -> Prelude.fmap Response'DeliverTx y__)
instance Data.ProtoLens.Field.HasField Response "deliverTx"
           (ResponseDeliverTx)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Response'value
               (\ x__ y__ -> x__{_Response'value = y__}))
              Prelude..
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Response'DeliverTx x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Response'DeliverTx y__))
                Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Field.HasField Response "maybe'endBlock"
           (Prelude.Maybe ResponseEndBlock)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Response'value
               (\ x__ y__ -> x__{_Response'value = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens
                (\ x__ ->
                   case x__ of
                       Prelude.Just (Response'EndBlock x__val) -> Prelude.Just x__val
                       _otherwise -> Prelude.Nothing)
                (\ _ y__ -> Prelude.fmap Response'EndBlock y__)
instance Data.ProtoLens.Field.HasField Response "endBlock"
           (ResponseEndBlock)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Response'value
               (\ x__ y__ -> x__{_Response'value = y__}))
              Prelude..
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Response'EndBlock x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Response'EndBlock y__))
                Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Field.HasField Response "maybe'commit"
           (Prelude.Maybe ResponseCommit)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Response'value
               (\ x__ y__ -> x__{_Response'value = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens
                (\ x__ ->
                   case x__ of
                       Prelude.Just (Response'Commit x__val) -> Prelude.Just x__val
                       _otherwise -> Prelude.Nothing)
                (\ _ y__ -> Prelude.fmap Response'Commit y__)
instance Data.ProtoLens.Field.HasField Response "commit"
           (ResponseCommit)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Response'value
               (\ x__ y__ -> x__{_Response'value = y__}))
              Prelude..
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Response'Commit x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Response'Commit y__))
                Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Message Response where
        messageName _ = Data.Text.pack "types.Response"
        fieldsByTag
          = let exception__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "exception"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseException)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'exception"))
                      :: Data.ProtoLens.FieldDescriptor Response
                echo__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "echo"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseEcho)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'echo"))
                      :: Data.ProtoLens.FieldDescriptor Response
                flush__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "flush"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseFlush)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'flush"))
                      :: Data.ProtoLens.FieldDescriptor Response
                info__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "info"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseInfo)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'info"))
                      :: Data.ProtoLens.FieldDescriptor Response
                setOption__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "set_option"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseSetOption)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'setOption"))
                      :: Data.ProtoLens.FieldDescriptor Response
                initChain__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "init_chain"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseInitChain)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'initChain"))
                      :: Data.ProtoLens.FieldDescriptor Response
                query__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "query"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseQuery)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'query"))
                      :: Data.ProtoLens.FieldDescriptor Response
                beginBlock__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "begin_block"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseBeginBlock)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'beginBlock"))
                      :: Data.ProtoLens.FieldDescriptor Response
                checkTx__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "check_tx"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseCheckTx)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'checkTx"))
                      :: Data.ProtoLens.FieldDescriptor Response
                deliverTx__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "deliver_tx"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseDeliverTx)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'deliverTx"))
                      :: Data.ProtoLens.FieldDescriptor Response
                endBlock__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "end_block"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseEndBlock)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'endBlock"))
                      :: Data.ProtoLens.FieldDescriptor Response
                commit__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "commit"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseCommit)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'commit"))
                      :: Data.ProtoLens.FieldDescriptor Response
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, exception__field_descriptor),
                 (Data.ProtoLens.Tag 2, echo__field_descriptor),
                 (Data.ProtoLens.Tag 3, flush__field_descriptor),
                 (Data.ProtoLens.Tag 4, info__field_descriptor),
                 (Data.ProtoLens.Tag 5, setOption__field_descriptor),
                 (Data.ProtoLens.Tag 6, initChain__field_descriptor),
                 (Data.ProtoLens.Tag 7, query__field_descriptor),
                 (Data.ProtoLens.Tag 8, beginBlock__field_descriptor),
                 (Data.ProtoLens.Tag 9, checkTx__field_descriptor),
                 (Data.ProtoLens.Tag 10, deliverTx__field_descriptor),
                 (Data.ProtoLens.Tag 11, endBlock__field_descriptor),
                 (Data.ProtoLens.Tag 12, commit__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _Response'_unknownFields
              (\ x__ y__ -> x__{_Response'_unknownFields = y__})
        defMessage
          = Response{_Response'value = Prelude.Nothing,
                     _Response'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     Response -> Data.ProtoLens.Encoding.Bytes.Parser Response
                loop x
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 x)
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                10 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?> "exception"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"exception")
                                              y
                                              x)
                                18 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?> "echo"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"echo") y
                                              x)
                                26 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?> "flush"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"flush") y
                                              x)
                                34 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?> "info"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"info") y
                                              x)
                                42 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?> "set_option"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"setOption")
                                              y
                                              x)
                                50 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?> "init_chain"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"initChain")
                                              y
                                              x)
                                58 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?> "query"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"query") y
                                              x)
                                66 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?> "begin_block"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"beginBlock")
                                              y
                                              x)
                                74 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?> "check_tx"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"checkTx")
                                              y
                                              x)
                                82 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?> "deliver_tx"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"deliverTx")
                                              y
                                              x)
                                90 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?> "end_block"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"endBlock")
                                              y
                                              x)
                                98 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?> "commit"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"commit")
                                              y
                                              x)
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "Response"
        buildMessage
          = (\ _x ->
               (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x of
                    (Prelude.Nothing) -> Data.Monoid.mempty
                    Prelude.Just
                      (Response'Exception v) -> (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                   10)
                                                  Data.Monoid.<>
                                                  (((\ bs ->
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          (Prelude.fromIntegral
                                                             (Data.ByteString.length bs)))
                                                         Data.Monoid.<>
                                                         Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                     Prelude.. Data.ProtoLens.encodeMessage)
                                                    v
                    Prelude.Just
                      (Response'Echo v) -> (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                                             Data.Monoid.<>
                                             (((\ bs ->
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                     (Prelude.fromIntegral
                                                        (Data.ByteString.length bs)))
                                                    Data.Monoid.<>
                                                    Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                Prelude.. Data.ProtoLens.encodeMessage)
                                               v
                    Prelude.Just
                      (Response'Flush v) -> (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                                              Data.Monoid.<>
                                              (((\ bs ->
                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                      (Prelude.fromIntegral
                                                         (Data.ByteString.length bs)))
                                                     Data.Monoid.<>
                                                     Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                 Prelude.. Data.ProtoLens.encodeMessage)
                                                v
                    Prelude.Just
                      (Response'Info v) -> (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                             Data.Monoid.<>
                                             (((\ bs ->
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                     (Prelude.fromIntegral
                                                        (Data.ByteString.length bs)))
                                                    Data.Monoid.<>
                                                    Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                Prelude.. Data.ProtoLens.encodeMessage)
                                               v
                    Prelude.Just
                      (Response'SetOption v) -> (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                   42)
                                                  Data.Monoid.<>
                                                  (((\ bs ->
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          (Prelude.fromIntegral
                                                             (Data.ByteString.length bs)))
                                                         Data.Monoid.<>
                                                         Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                     Prelude.. Data.ProtoLens.encodeMessage)
                                                    v
                    Prelude.Just
                      (Response'InitChain v) -> (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                   50)
                                                  Data.Monoid.<>
                                                  (((\ bs ->
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          (Prelude.fromIntegral
                                                             (Data.ByteString.length bs)))
                                                         Data.Monoid.<>
                                                         Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                     Prelude.. Data.ProtoLens.encodeMessage)
                                                    v
                    Prelude.Just
                      (Response'Query v) -> (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                              Data.Monoid.<>
                                              (((\ bs ->
                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                      (Prelude.fromIntegral
                                                         (Data.ByteString.length bs)))
                                                     Data.Monoid.<>
                                                     Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                 Prelude.. Data.ProtoLens.encodeMessage)
                                                v
                    Prelude.Just
                      (Response'BeginBlock v) -> (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    66)
                                                   Data.Monoid.<>
                                                   (((\ bs ->
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           (Prelude.fromIntegral
                                                              (Data.ByteString.length bs)))
                                                          Data.Monoid.<>
                                                          Data.ProtoLens.Encoding.Bytes.putBytes
                                                            bs))
                                                      Prelude.. Data.ProtoLens.encodeMessage)
                                                     v
                    Prelude.Just
                      (Response'CheckTx v) -> (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 74)
                                                Data.Monoid.<>
                                                (((\ bs ->
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                        (Prelude.fromIntegral
                                                           (Data.ByteString.length bs)))
                                                       Data.Monoid.<>
                                                       Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                   Prelude.. Data.ProtoLens.encodeMessage)
                                                  v
                    Prelude.Just
                      (Response'DeliverTx v) -> (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                   82)
                                                  Data.Monoid.<>
                                                  (((\ bs ->
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          (Prelude.fromIntegral
                                                             (Data.ByteString.length bs)))
                                                         Data.Monoid.<>
                                                         Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                     Prelude.. Data.ProtoLens.encodeMessage)
                                                    v
                    Prelude.Just
                      (Response'EndBlock v) -> (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                  90)
                                                 Data.Monoid.<>
                                                 (((\ bs ->
                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                         (Prelude.fromIntegral
                                                            (Data.ByteString.length bs)))
                                                        Data.Monoid.<>
                                                        Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                    Prelude.. Data.ProtoLens.encodeMessage)
                                                   v
                    Prelude.Just
                      (Response'Commit v) -> (Data.ProtoLens.Encoding.Bytes.putVarInt 98)
                                               Data.Monoid.<>
                                               (((\ bs ->
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       (Prelude.fromIntegral
                                                          (Data.ByteString.length bs)))
                                                      Data.Monoid.<>
                                                      Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                  Prelude.. Data.ProtoLens.encodeMessage)
                                                 v)
                 Data.Monoid.<>
                 Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Response where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_Response'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_Response'value x__) (())))
instance Control.DeepSeq.NFData Response'Value where
        rnf (Response'Exception x__) = Control.DeepSeq.rnf x__
        rnf (Response'Echo x__) = Control.DeepSeq.rnf x__
        rnf (Response'Flush x__) = Control.DeepSeq.rnf x__
        rnf (Response'Info x__) = Control.DeepSeq.rnf x__
        rnf (Response'SetOption x__) = Control.DeepSeq.rnf x__
        rnf (Response'InitChain x__) = Control.DeepSeq.rnf x__
        rnf (Response'Query x__) = Control.DeepSeq.rnf x__
        rnf (Response'BeginBlock x__) = Control.DeepSeq.rnf x__
        rnf (Response'CheckTx x__) = Control.DeepSeq.rnf x__
        rnf (Response'DeliverTx x__) = Control.DeepSeq.rnf x__
        rnf (Response'EndBlock x__) = Control.DeepSeq.rnf x__
        rnf (Response'Commit x__) = Control.DeepSeq.rnf x__
_Response'Exception ::
                    Data.ProtoLens.Prism.Prism' Response'Value ResponseException
_Response'Exception
  = Data.ProtoLens.Prism.prism' Response'Exception
      (\ p__ ->
         case p__ of
             Response'Exception p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_Response'Echo ::
               Data.ProtoLens.Prism.Prism' Response'Value ResponseEcho
_Response'Echo
  = Data.ProtoLens.Prism.prism' Response'Echo
      (\ p__ ->
         case p__ of
             Response'Echo p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_Response'Flush ::
                Data.ProtoLens.Prism.Prism' Response'Value ResponseFlush
_Response'Flush
  = Data.ProtoLens.Prism.prism' Response'Flush
      (\ p__ ->
         case p__ of
             Response'Flush p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_Response'Info ::
               Data.ProtoLens.Prism.Prism' Response'Value ResponseInfo
_Response'Info
  = Data.ProtoLens.Prism.prism' Response'Info
      (\ p__ ->
         case p__ of
             Response'Info p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_Response'SetOption ::
                    Data.ProtoLens.Prism.Prism' Response'Value ResponseSetOption
_Response'SetOption
  = Data.ProtoLens.Prism.prism' Response'SetOption
      (\ p__ ->
         case p__ of
             Response'SetOption p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_Response'InitChain ::
                    Data.ProtoLens.Prism.Prism' Response'Value ResponseInitChain
_Response'InitChain
  = Data.ProtoLens.Prism.prism' Response'InitChain
      (\ p__ ->
         case p__ of
             Response'InitChain p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_Response'Query ::
                Data.ProtoLens.Prism.Prism' Response'Value ResponseQuery
_Response'Query
  = Data.ProtoLens.Prism.prism' Response'Query
      (\ p__ ->
         case p__ of
             Response'Query p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_Response'BeginBlock ::
                     Data.ProtoLens.Prism.Prism' Response'Value ResponseBeginBlock
_Response'BeginBlock
  = Data.ProtoLens.Prism.prism' Response'BeginBlock
      (\ p__ ->
         case p__ of
             Response'BeginBlock p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_Response'CheckTx ::
                  Data.ProtoLens.Prism.Prism' Response'Value ResponseCheckTx
_Response'CheckTx
  = Data.ProtoLens.Prism.prism' Response'CheckTx
      (\ p__ ->
         case p__ of
             Response'CheckTx p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_Response'DeliverTx ::
                    Data.ProtoLens.Prism.Prism' Response'Value ResponseDeliverTx
_Response'DeliverTx
  = Data.ProtoLens.Prism.prism' Response'DeliverTx
      (\ p__ ->
         case p__ of
             Response'DeliverTx p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_Response'EndBlock ::
                   Data.ProtoLens.Prism.Prism' Response'Value ResponseEndBlock
_Response'EndBlock
  = Data.ProtoLens.Prism.prism' Response'EndBlock
      (\ p__ ->
         case p__ of
             Response'EndBlock p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_Response'Commit ::
                 Data.ProtoLens.Prism.Prism' Response'Value ResponseCommit
_Response'Commit
  = Data.ProtoLens.Prism.prism' Response'Commit
      (\ p__ ->
         case p__ of
             Response'Commit p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
{- | Fields :

    * 'Proto.Types_Fields.tags' @:: Lens' ResponseBeginBlock
  [Proto.Vendored.Tendermint.Tendermint.Libs.Common.Types.KVPair]@
    * 'Proto.Types_Fields.vec'tags' @:: Lens' ResponseBeginBlock
  (Data.Vector.Vector
     Proto.Vendored.Tendermint.Tendermint.Libs.Common.Types.KVPair)@
 -}
data ResponseBeginBlock = ResponseBeginBlock{_ResponseBeginBlock'tags
                                             ::
                                             !(Data.Vector.Vector
                                                 Proto.Vendored.Tendermint.Tendermint.Libs.Common.Types.KVPair),
                                             _ResponseBeginBlock'_unknownFields ::
                                             !Data.ProtoLens.FieldSet}
                            deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResponseBeginBlock where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ResponseBeginBlock "tags"
           ([Proto.Vendored.Tendermint.Tendermint.Libs.Common.Types.KVPair])
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ResponseBeginBlock'tags
               (\ x__ y__ -> x__{_ResponseBeginBlock'tags = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens Data.Vector.Generic.toList
                (\ _ y__ -> Data.Vector.Generic.fromList y__)
instance Data.ProtoLens.Field.HasField ResponseBeginBlock
           "vec'tags"
           (Data.Vector.Vector
              Proto.Vendored.Tendermint.Tendermint.Libs.Common.Types.KVPair)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ResponseBeginBlock'tags
               (\ x__ y__ -> x__{_ResponseBeginBlock'tags = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message ResponseBeginBlock where
        messageName _ = Data.Text.pack "types.ResponseBeginBlock"
        fieldsByTag
          = let tags__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "tags"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Vendored.Tendermint.Tendermint.Libs.Common.Types.KVPair)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Data.ProtoLens.Field.field @"tags"))
                      :: Data.ProtoLens.FieldDescriptor ResponseBeginBlock
              in
              Data.Map.fromList [(Data.ProtoLens.Tag 1, tags__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _ResponseBeginBlock'_unknownFields
              (\ x__ y__ -> x__{_ResponseBeginBlock'_unknownFields = y__})
        defMessage
          = ResponseBeginBlock{_ResponseBeginBlock'tags =
                                 Data.Vector.Generic.empty,
                               _ResponseBeginBlock'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     ResponseBeginBlock ->
                       Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector
                         Data.ProtoLens.Encoding.Growing.RealWorld
                         Proto.Vendored.Tendermint.Tendermint.Libs.Common.Types.KVPair
                         -> Data.ProtoLens.Encoding.Bytes.Parser ResponseBeginBlock
                loop x mutable'tags
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do frozen'tags <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'tags)
                            let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 (Lens.Family2.set (Data.ProtoLens.Field.field @"vec'tags")
                                    frozen'tags
                                    x))
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                10 -> do !y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                   Data.ProtoLens.Encoding.Bytes.isolate
                                                     (Prelude.fromIntegral len)
                                                     Data.ProtoLens.parseMessage)
                                                 Data.ProtoLens.Encoding.Bytes.<?> "tags"
                                         v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.append mutable'tags
                                                   y)
                                         loop x v
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
                                             mutable'tags
              in
              (do mutable'tags <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
                  loop Data.ProtoLens.defMessage mutable'tags)
                Data.ProtoLens.Encoding.Bytes.<?> "ResponseBeginBlock"
        buildMessage
          = (\ _x ->
               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                  (\ _v ->
                     (Data.ProtoLens.Encoding.Bytes.putVarInt 10) Data.Monoid.<>
                       (((\ bs ->
                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                               (Prelude.fromIntegral (Data.ByteString.length bs)))
                              Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Prelude.. Data.ProtoLens.encodeMessage)
                         _v)
                  (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'tags") _x))
                 Data.Monoid.<>
                 Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ResponseBeginBlock where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_ResponseBeginBlock'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_ResponseBeginBlock'tags x__) (())))
{- | Fields :

    * 'Proto.Types_Fields.code' @:: Lens' ResponseCheckTx Data.Word.Word32@
    * 'Proto.Types_Fields.data'' @:: Lens' ResponseCheckTx Data.ByteString.ByteString@
    * 'Proto.Types_Fields.log' @:: Lens' ResponseCheckTx Data.Text.Text@
    * 'Proto.Types_Fields.info' @:: Lens' ResponseCheckTx Data.Text.Text@
    * 'Proto.Types_Fields.gasWanted' @:: Lens' ResponseCheckTx Data.Int.Int64@
    * 'Proto.Types_Fields.gasUsed' @:: Lens' ResponseCheckTx Data.Int.Int64@
    * 'Proto.Types_Fields.tags' @:: Lens' ResponseCheckTx
  [Proto.Vendored.Tendermint.Tendermint.Libs.Common.Types.KVPair]@
    * 'Proto.Types_Fields.vec'tags' @:: Lens' ResponseCheckTx
  (Data.Vector.Vector
     Proto.Vendored.Tendermint.Tendermint.Libs.Common.Types.KVPair)@
    * 'Proto.Types_Fields.codespace' @:: Lens' ResponseCheckTx Data.Text.Text@
 -}
data ResponseCheckTx = ResponseCheckTx{_ResponseCheckTx'code ::
                                       !Data.Word.Word32,
                                       _ResponseCheckTx'data' :: !Data.ByteString.ByteString,
                                       _ResponseCheckTx'log :: !Data.Text.Text,
                                       _ResponseCheckTx'info :: !Data.Text.Text,
                                       _ResponseCheckTx'gasWanted :: !Data.Int.Int64,
                                       _ResponseCheckTx'gasUsed :: !Data.Int.Int64,
                                       _ResponseCheckTx'tags ::
                                       !(Data.Vector.Vector
                                           Proto.Vendored.Tendermint.Tendermint.Libs.Common.Types.KVPair),
                                       _ResponseCheckTx'codespace :: !Data.Text.Text,
                                       _ResponseCheckTx'_unknownFields :: !Data.ProtoLens.FieldSet}
                         deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResponseCheckTx where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ResponseCheckTx "code"
           (Data.Word.Word32)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ResponseCheckTx'code
               (\ x__ y__ -> x__{_ResponseCheckTx'code = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField ResponseCheckTx "data'"
           (Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ResponseCheckTx'data'
               (\ x__ y__ -> x__{_ResponseCheckTx'data' = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField ResponseCheckTx "log"
           (Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ResponseCheckTx'log
               (\ x__ y__ -> x__{_ResponseCheckTx'log = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField ResponseCheckTx "info"
           (Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ResponseCheckTx'info
               (\ x__ y__ -> x__{_ResponseCheckTx'info = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField ResponseCheckTx "gasWanted"
           (Data.Int.Int64)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ResponseCheckTx'gasWanted
               (\ x__ y__ -> x__{_ResponseCheckTx'gasWanted = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField ResponseCheckTx "gasUsed"
           (Data.Int.Int64)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ResponseCheckTx'gasUsed
               (\ x__ y__ -> x__{_ResponseCheckTx'gasUsed = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField ResponseCheckTx "tags"
           ([Proto.Vendored.Tendermint.Tendermint.Libs.Common.Types.KVPair])
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ResponseCheckTx'tags
               (\ x__ y__ -> x__{_ResponseCheckTx'tags = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens Data.Vector.Generic.toList
                (\ _ y__ -> Data.Vector.Generic.fromList y__)
instance Data.ProtoLens.Field.HasField ResponseCheckTx "vec'tags"
           (Data.Vector.Vector
              Proto.Vendored.Tendermint.Tendermint.Libs.Common.Types.KVPair)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ResponseCheckTx'tags
               (\ x__ y__ -> x__{_ResponseCheckTx'tags = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField ResponseCheckTx "codespace"
           (Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ResponseCheckTx'codespace
               (\ x__ y__ -> x__{_ResponseCheckTx'codespace = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message ResponseCheckTx where
        messageName _ = Data.Text.pack "types.ResponseCheckTx"
        fieldsByTag
          = let code__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "code"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"code"))
                      :: Data.ProtoLens.FieldDescriptor ResponseCheckTx
                data'__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "data"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"data'"))
                      :: Data.ProtoLens.FieldDescriptor ResponseCheckTx
                log__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "log"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"log"))
                      :: Data.ProtoLens.FieldDescriptor ResponseCheckTx
                info__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "info"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"info"))
                      :: Data.ProtoLens.FieldDescriptor ResponseCheckTx
                gasWanted__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "gas_wanted"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"gasWanted"))
                      :: Data.ProtoLens.FieldDescriptor ResponseCheckTx
                gasUsed__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "gas_used"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"gasUsed"))
                      :: Data.ProtoLens.FieldDescriptor ResponseCheckTx
                tags__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "tags"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Vendored.Tendermint.Tendermint.Libs.Common.Types.KVPair)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Data.ProtoLens.Field.field @"tags"))
                      :: Data.ProtoLens.FieldDescriptor ResponseCheckTx
                codespace__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "codespace"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"codespace"))
                      :: Data.ProtoLens.FieldDescriptor ResponseCheckTx
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, code__field_descriptor),
                 (Data.ProtoLens.Tag 2, data'__field_descriptor),
                 (Data.ProtoLens.Tag 3, log__field_descriptor),
                 (Data.ProtoLens.Tag 4, info__field_descriptor),
                 (Data.ProtoLens.Tag 5, gasWanted__field_descriptor),
                 (Data.ProtoLens.Tag 6, gasUsed__field_descriptor),
                 (Data.ProtoLens.Tag 7, tags__field_descriptor),
                 (Data.ProtoLens.Tag 8, codespace__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _ResponseCheckTx'_unknownFields
              (\ x__ y__ -> x__{_ResponseCheckTx'_unknownFields = y__})
        defMessage
          = ResponseCheckTx{_ResponseCheckTx'code =
                              Data.ProtoLens.fieldDefault,
                            _ResponseCheckTx'data' = Data.ProtoLens.fieldDefault,
                            _ResponseCheckTx'log = Data.ProtoLens.fieldDefault,
                            _ResponseCheckTx'info = Data.ProtoLens.fieldDefault,
                            _ResponseCheckTx'gasWanted = Data.ProtoLens.fieldDefault,
                            _ResponseCheckTx'gasUsed = Data.ProtoLens.fieldDefault,
                            _ResponseCheckTx'tags = Data.Vector.Generic.empty,
                            _ResponseCheckTx'codespace = Data.ProtoLens.fieldDefault,
                            _ResponseCheckTx'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     ResponseCheckTx ->
                       Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector
                         Data.ProtoLens.Encoding.Growing.RealWorld
                         Proto.Vendored.Tendermint.Tendermint.Libs.Common.Types.KVPair
                         -> Data.ProtoLens.Encoding.Bytes.Parser ResponseCheckTx
                loop x mutable'tags
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do frozen'tags <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'tags)
                            let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 (Lens.Family2.set (Data.ProtoLens.Field.field @"vec'tags")
                                    frozen'tags
                                    x))
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                8 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                Data.ProtoLens.Encoding.Bytes.getVarInt)
                                               Data.ProtoLens.Encoding.Bytes.<?> "code"
                                        loop
                                          (Lens.Family2.set (Data.ProtoLens.Field.field @"code") y
                                             x)
                                          mutable'tags
                                18 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.getBytes
                                                    (Prelude.fromIntegral len))
                                                Data.ProtoLens.Encoding.Bytes.<?> "data"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"data'") y
                                              x)
                                           mutable'tags
                                26 -> do y <- (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                              Data.ProtoLens.Encoding.Bytes.getBytes
                                                                (Prelude.fromIntegral len)
                                                  Data.ProtoLens.Encoding.Bytes.runEither
                                                    (case Data.Text.Encoding.decodeUtf8' value of
                                                         Prelude.Left err -> Prelude.Left
                                                                               (Prelude.show err)
                                                         Prelude.Right r -> Prelude.Right r))
                                                Data.ProtoLens.Encoding.Bytes.<?> "log"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"log") y
                                              x)
                                           mutable'tags
                                34 -> do y <- (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                              Data.ProtoLens.Encoding.Bytes.getBytes
                                                                (Prelude.fromIntegral len)
                                                  Data.ProtoLens.Encoding.Bytes.runEither
                                                    (case Data.Text.Encoding.decodeUtf8' value of
                                                         Prelude.Left err -> Prelude.Left
                                                                               (Prelude.show err)
                                                         Prelude.Right r -> Prelude.Right r))
                                                Data.ProtoLens.Encoding.Bytes.<?> "info"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"info") y
                                              x)
                                           mutable'tags
                                40 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                 Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                Data.ProtoLens.Encoding.Bytes.<?> "gas_wanted"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"gasWanted")
                                              y
                                              x)
                                           mutable'tags
                                48 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                 Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                Data.ProtoLens.Encoding.Bytes.<?> "gas_used"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"gasUsed")
                                              y
                                              x)
                                           mutable'tags
                                58 -> do !y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                   Data.ProtoLens.Encoding.Bytes.isolate
                                                     (Prelude.fromIntegral len)
                                                     Data.ProtoLens.parseMessage)
                                                 Data.ProtoLens.Encoding.Bytes.<?> "tags"
                                         v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.append mutable'tags
                                                   y)
                                         loop x v
                                66 -> do y <- (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                              Data.ProtoLens.Encoding.Bytes.getBytes
                                                                (Prelude.fromIntegral len)
                                                  Data.ProtoLens.Encoding.Bytes.runEither
                                                    (case Data.Text.Encoding.decodeUtf8' value of
                                                         Prelude.Left err -> Prelude.Left
                                                                               (Prelude.show err)
                                                         Prelude.Right r -> Prelude.Right r))
                                                Data.ProtoLens.Encoding.Bytes.<?> "codespace"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"codespace")
                                              y
                                              x)
                                           mutable'tags
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
                                             mutable'tags
              in
              (do mutable'tags <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
                  loop Data.ProtoLens.defMessage mutable'tags)
                Data.ProtoLens.Encoding.Bytes.<?> "ResponseCheckTx"
        buildMessage
          = (\ _x ->
               (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"code") _x
                  in
                  if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty else
                    (Data.ProtoLens.Encoding.Bytes.putVarInt 8) Data.Monoid.<>
                      ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                         Prelude.fromIntegral)
                        _v)
                 Data.Monoid.<>
                 (let _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"data'") _x
                    in
                    if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                      Data.Monoid.mempty else
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 18) Data.Monoid.<>
                        (\ bs ->
                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                             Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs)
                          _v)
                   Data.Monoid.<>
                   (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"log") _x
                      in
                      if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                        Data.Monoid.mempty else
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 26) Data.Monoid.<>
                          (((\ bs ->
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Prelude.. Data.Text.Encoding.encodeUtf8)
                            _v)
                     Data.Monoid.<>
                     (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"info") _x
                        in
                        if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty else
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 34) Data.Monoid.<>
                            (((\ bs ->
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Prelude.. Data.Text.Encoding.encodeUtf8)
                              _v)
                       Data.Monoid.<>
                       (let _v
                              = Lens.Family2.view (Data.ProtoLens.Field.field @"gasWanted") _x
                          in
                          if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                            Data.Monoid.mempty else
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 40) Data.Monoid.<>
                              ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                                 Prelude.fromIntegral)
                                _v)
                         Data.Monoid.<>
                         (let _v
                                = Lens.Family2.view (Data.ProtoLens.Field.field @"gasUsed") _x
                            in
                            if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                              Data.Monoid.mempty else
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 48) Data.Monoid.<>
                                ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                                   Prelude.fromIntegral)
                                  _v)
                           Data.Monoid.<>
                           (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                              (\ _v ->
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 58) Data.Monoid.<>
                                   (((\ bs ->
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                          Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Prelude.. Data.ProtoLens.encodeMessage)
                                     _v)
                              (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'tags") _x))
                             Data.Monoid.<>
                             (let _v
                                    = Lens.Family2.view (Data.ProtoLens.Field.field @"codespace") _x
                                in
                                if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                                  Data.Monoid.mempty else
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 66) Data.Monoid.<>
                                    (((\ bs ->
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           Data.Monoid.<>
                                           Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                       Prelude.. Data.Text.Encoding.encodeUtf8)
                                      _v)
                               Data.Monoid.<>
                               Data.ProtoLens.Encoding.Wire.buildFieldSet
                                 (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ResponseCheckTx where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_ResponseCheckTx'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_ResponseCheckTx'code x__)
                    (Control.DeepSeq.deepseq (_ResponseCheckTx'data' x__)
                       (Control.DeepSeq.deepseq (_ResponseCheckTx'log x__)
                          (Control.DeepSeq.deepseq (_ResponseCheckTx'info x__)
                             (Control.DeepSeq.deepseq (_ResponseCheckTx'gasWanted x__)
                                (Control.DeepSeq.deepseq (_ResponseCheckTx'gasUsed x__)
                                   (Control.DeepSeq.deepseq (_ResponseCheckTx'tags x__)
                                      (Control.DeepSeq.deepseq (_ResponseCheckTx'codespace x__)
                                         (()))))))))))
{- | Fields :

    * 'Proto.Types_Fields.data'' @:: Lens' ResponseCommit Data.ByteString.ByteString@
 -}
data ResponseCommit = ResponseCommit{_ResponseCommit'data' ::
                                     !Data.ByteString.ByteString,
                                     _ResponseCommit'_unknownFields :: !Data.ProtoLens.FieldSet}
                        deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResponseCommit where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ResponseCommit "data'"
           (Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ResponseCommit'data'
               (\ x__ y__ -> x__{_ResponseCommit'data' = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message ResponseCommit where
        messageName _ = Data.Text.pack "types.ResponseCommit"
        fieldsByTag
          = let data'__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "data"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"data'"))
                      :: Data.ProtoLens.FieldDescriptor ResponseCommit
              in
              Data.Map.fromList [(Data.ProtoLens.Tag 2, data'__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _ResponseCommit'_unknownFields
              (\ x__ y__ -> x__{_ResponseCommit'_unknownFields = y__})
        defMessage
          = ResponseCommit{_ResponseCommit'data' =
                             Data.ProtoLens.fieldDefault,
                           _ResponseCommit'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     ResponseCommit ->
                       Data.ProtoLens.Encoding.Bytes.Parser ResponseCommit
                loop x
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 x)
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                18 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.getBytes
                                                    (Prelude.fromIntegral len))
                                                Data.ProtoLens.Encoding.Bytes.<?> "data"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"data'") y
                                              x)
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "ResponseCommit"
        buildMessage
          = (\ _x ->
               (let _v
                      = Lens.Family2.view (Data.ProtoLens.Field.field @"data'") _x
                  in
                  if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty else
                    (Data.ProtoLens.Encoding.Bytes.putVarInt 18) Data.Monoid.<>
                      (\ bs ->
                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                           Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs)
                        _v)
                 Data.Monoid.<>
                 Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ResponseCommit where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_ResponseCommit'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_ResponseCommit'data' x__) (())))
{- | Fields :

    * 'Proto.Types_Fields.code' @:: Lens' ResponseDeliverTx Data.Word.Word32@
    * 'Proto.Types_Fields.data'' @:: Lens' ResponseDeliverTx Data.ByteString.ByteString@
    * 'Proto.Types_Fields.log' @:: Lens' ResponseDeliverTx Data.Text.Text@
    * 'Proto.Types_Fields.info' @:: Lens' ResponseDeliverTx Data.Text.Text@
    * 'Proto.Types_Fields.gasWanted' @:: Lens' ResponseDeliverTx Data.Int.Int64@
    * 'Proto.Types_Fields.gasUsed' @:: Lens' ResponseDeliverTx Data.Int.Int64@
    * 'Proto.Types_Fields.tags' @:: Lens' ResponseDeliverTx
  [Proto.Vendored.Tendermint.Tendermint.Libs.Common.Types.KVPair]@
    * 'Proto.Types_Fields.vec'tags' @:: Lens' ResponseDeliverTx
  (Data.Vector.Vector
     Proto.Vendored.Tendermint.Tendermint.Libs.Common.Types.KVPair)@
    * 'Proto.Types_Fields.codespace' @:: Lens' ResponseDeliverTx Data.Text.Text@
 -}
data ResponseDeliverTx = ResponseDeliverTx{_ResponseDeliverTx'code
                                           :: !Data.Word.Word32,
                                           _ResponseDeliverTx'data' :: !Data.ByteString.ByteString,
                                           _ResponseDeliverTx'log :: !Data.Text.Text,
                                           _ResponseDeliverTx'info :: !Data.Text.Text,
                                           _ResponseDeliverTx'gasWanted :: !Data.Int.Int64,
                                           _ResponseDeliverTx'gasUsed :: !Data.Int.Int64,
                                           _ResponseDeliverTx'tags ::
                                           !(Data.Vector.Vector
                                               Proto.Vendored.Tendermint.Tendermint.Libs.Common.Types.KVPair),
                                           _ResponseDeliverTx'codespace :: !Data.Text.Text,
                                           _ResponseDeliverTx'_unknownFields ::
                                           !Data.ProtoLens.FieldSet}
                           deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResponseDeliverTx where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ResponseDeliverTx "code"
           (Data.Word.Word32)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ResponseDeliverTx'code
               (\ x__ y__ -> x__{_ResponseDeliverTx'code = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField ResponseDeliverTx "data'"
           (Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ResponseDeliverTx'data'
               (\ x__ y__ -> x__{_ResponseDeliverTx'data' = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField ResponseDeliverTx "log"
           (Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ResponseDeliverTx'log
               (\ x__ y__ -> x__{_ResponseDeliverTx'log = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField ResponseDeliverTx "info"
           (Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ResponseDeliverTx'info
               (\ x__ y__ -> x__{_ResponseDeliverTx'info = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField ResponseDeliverTx
           "gasWanted"
           (Data.Int.Int64)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ResponseDeliverTx'gasWanted
               (\ x__ y__ -> x__{_ResponseDeliverTx'gasWanted = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField ResponseDeliverTx "gasUsed"
           (Data.Int.Int64)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ResponseDeliverTx'gasUsed
               (\ x__ y__ -> x__{_ResponseDeliverTx'gasUsed = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField ResponseDeliverTx "tags"
           ([Proto.Vendored.Tendermint.Tendermint.Libs.Common.Types.KVPair])
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ResponseDeliverTx'tags
               (\ x__ y__ -> x__{_ResponseDeliverTx'tags = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens Data.Vector.Generic.toList
                (\ _ y__ -> Data.Vector.Generic.fromList y__)
instance Data.ProtoLens.Field.HasField ResponseDeliverTx "vec'tags"
           (Data.Vector.Vector
              Proto.Vendored.Tendermint.Tendermint.Libs.Common.Types.KVPair)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ResponseDeliverTx'tags
               (\ x__ y__ -> x__{_ResponseDeliverTx'tags = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField ResponseDeliverTx
           "codespace"
           (Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ResponseDeliverTx'codespace
               (\ x__ y__ -> x__{_ResponseDeliverTx'codespace = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message ResponseDeliverTx where
        messageName _ = Data.Text.pack "types.ResponseDeliverTx"
        fieldsByTag
          = let code__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "code"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"code"))
                      :: Data.ProtoLens.FieldDescriptor ResponseDeliverTx
                data'__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "data"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"data'"))
                      :: Data.ProtoLens.FieldDescriptor ResponseDeliverTx
                log__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "log"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"log"))
                      :: Data.ProtoLens.FieldDescriptor ResponseDeliverTx
                info__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "info"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"info"))
                      :: Data.ProtoLens.FieldDescriptor ResponseDeliverTx
                gasWanted__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "gas_wanted"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"gasWanted"))
                      :: Data.ProtoLens.FieldDescriptor ResponseDeliverTx
                gasUsed__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "gas_used"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"gasUsed"))
                      :: Data.ProtoLens.FieldDescriptor ResponseDeliverTx
                tags__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "tags"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Vendored.Tendermint.Tendermint.Libs.Common.Types.KVPair)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Data.ProtoLens.Field.field @"tags"))
                      :: Data.ProtoLens.FieldDescriptor ResponseDeliverTx
                codespace__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "codespace"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"codespace"))
                      :: Data.ProtoLens.FieldDescriptor ResponseDeliverTx
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, code__field_descriptor),
                 (Data.ProtoLens.Tag 2, data'__field_descriptor),
                 (Data.ProtoLens.Tag 3, log__field_descriptor),
                 (Data.ProtoLens.Tag 4, info__field_descriptor),
                 (Data.ProtoLens.Tag 5, gasWanted__field_descriptor),
                 (Data.ProtoLens.Tag 6, gasUsed__field_descriptor),
                 (Data.ProtoLens.Tag 7, tags__field_descriptor),
                 (Data.ProtoLens.Tag 8, codespace__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _ResponseDeliverTx'_unknownFields
              (\ x__ y__ -> x__{_ResponseDeliverTx'_unknownFields = y__})
        defMessage
          = ResponseDeliverTx{_ResponseDeliverTx'code =
                                Data.ProtoLens.fieldDefault,
                              _ResponseDeliverTx'data' = Data.ProtoLens.fieldDefault,
                              _ResponseDeliverTx'log = Data.ProtoLens.fieldDefault,
                              _ResponseDeliverTx'info = Data.ProtoLens.fieldDefault,
                              _ResponseDeliverTx'gasWanted = Data.ProtoLens.fieldDefault,
                              _ResponseDeliverTx'gasUsed = Data.ProtoLens.fieldDefault,
                              _ResponseDeliverTx'tags = Data.Vector.Generic.empty,
                              _ResponseDeliverTx'codespace = Data.ProtoLens.fieldDefault,
                              _ResponseDeliverTx'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     ResponseDeliverTx ->
                       Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector
                         Data.ProtoLens.Encoding.Growing.RealWorld
                         Proto.Vendored.Tendermint.Tendermint.Libs.Common.Types.KVPair
                         -> Data.ProtoLens.Encoding.Bytes.Parser ResponseDeliverTx
                loop x mutable'tags
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do frozen'tags <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'tags)
                            let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 (Lens.Family2.set (Data.ProtoLens.Field.field @"vec'tags")
                                    frozen'tags
                                    x))
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                8 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                Data.ProtoLens.Encoding.Bytes.getVarInt)
                                               Data.ProtoLens.Encoding.Bytes.<?> "code"
                                        loop
                                          (Lens.Family2.set (Data.ProtoLens.Field.field @"code") y
                                             x)
                                          mutable'tags
                                18 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.getBytes
                                                    (Prelude.fromIntegral len))
                                                Data.ProtoLens.Encoding.Bytes.<?> "data"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"data'") y
                                              x)
                                           mutable'tags
                                26 -> do y <- (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                              Data.ProtoLens.Encoding.Bytes.getBytes
                                                                (Prelude.fromIntegral len)
                                                  Data.ProtoLens.Encoding.Bytes.runEither
                                                    (case Data.Text.Encoding.decodeUtf8' value of
                                                         Prelude.Left err -> Prelude.Left
                                                                               (Prelude.show err)
                                                         Prelude.Right r -> Prelude.Right r))
                                                Data.ProtoLens.Encoding.Bytes.<?> "log"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"log") y
                                              x)
                                           mutable'tags
                                34 -> do y <- (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                              Data.ProtoLens.Encoding.Bytes.getBytes
                                                                (Prelude.fromIntegral len)
                                                  Data.ProtoLens.Encoding.Bytes.runEither
                                                    (case Data.Text.Encoding.decodeUtf8' value of
                                                         Prelude.Left err -> Prelude.Left
                                                                               (Prelude.show err)
                                                         Prelude.Right r -> Prelude.Right r))
                                                Data.ProtoLens.Encoding.Bytes.<?> "info"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"info") y
                                              x)
                                           mutable'tags
                                40 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                 Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                Data.ProtoLens.Encoding.Bytes.<?> "gas_wanted"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"gasWanted")
                                              y
                                              x)
                                           mutable'tags
                                48 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                 Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                Data.ProtoLens.Encoding.Bytes.<?> "gas_used"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"gasUsed")
                                              y
                                              x)
                                           mutable'tags
                                58 -> do !y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                   Data.ProtoLens.Encoding.Bytes.isolate
                                                     (Prelude.fromIntegral len)
                                                     Data.ProtoLens.parseMessage)
                                                 Data.ProtoLens.Encoding.Bytes.<?> "tags"
                                         v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.append mutable'tags
                                                   y)
                                         loop x v
                                66 -> do y <- (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                              Data.ProtoLens.Encoding.Bytes.getBytes
                                                                (Prelude.fromIntegral len)
                                                  Data.ProtoLens.Encoding.Bytes.runEither
                                                    (case Data.Text.Encoding.decodeUtf8' value of
                                                         Prelude.Left err -> Prelude.Left
                                                                               (Prelude.show err)
                                                         Prelude.Right r -> Prelude.Right r))
                                                Data.ProtoLens.Encoding.Bytes.<?> "codespace"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"codespace")
                                              y
                                              x)
                                           mutable'tags
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
                                             mutable'tags
              in
              (do mutable'tags <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
                  loop Data.ProtoLens.defMessage mutable'tags)
                Data.ProtoLens.Encoding.Bytes.<?> "ResponseDeliverTx"
        buildMessage
          = (\ _x ->
               (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"code") _x
                  in
                  if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty else
                    (Data.ProtoLens.Encoding.Bytes.putVarInt 8) Data.Monoid.<>
                      ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                         Prelude.fromIntegral)
                        _v)
                 Data.Monoid.<>
                 (let _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"data'") _x
                    in
                    if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                      Data.Monoid.mempty else
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 18) Data.Monoid.<>
                        (\ bs ->
                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                             Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs)
                          _v)
                   Data.Monoid.<>
                   (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"log") _x
                      in
                      if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                        Data.Monoid.mempty else
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 26) Data.Monoid.<>
                          (((\ bs ->
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Prelude.. Data.Text.Encoding.encodeUtf8)
                            _v)
                     Data.Monoid.<>
                     (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"info") _x
                        in
                        if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty else
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 34) Data.Monoid.<>
                            (((\ bs ->
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Prelude.. Data.Text.Encoding.encodeUtf8)
                              _v)
                       Data.Monoid.<>
                       (let _v
                              = Lens.Family2.view (Data.ProtoLens.Field.field @"gasWanted") _x
                          in
                          if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                            Data.Monoid.mempty else
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 40) Data.Monoid.<>
                              ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                                 Prelude.fromIntegral)
                                _v)
                         Data.Monoid.<>
                         (let _v
                                = Lens.Family2.view (Data.ProtoLens.Field.field @"gasUsed") _x
                            in
                            if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                              Data.Monoid.mempty else
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 48) Data.Monoid.<>
                                ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                                   Prelude.fromIntegral)
                                  _v)
                           Data.Monoid.<>
                           (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                              (\ _v ->
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 58) Data.Monoid.<>
                                   (((\ bs ->
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                          Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Prelude.. Data.ProtoLens.encodeMessage)
                                     _v)
                              (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'tags") _x))
                             Data.Monoid.<>
                             (let _v
                                    = Lens.Family2.view (Data.ProtoLens.Field.field @"codespace") _x
                                in
                                if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                                  Data.Monoid.mempty else
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 66) Data.Monoid.<>
                                    (((\ bs ->
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           Data.Monoid.<>
                                           Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                       Prelude.. Data.Text.Encoding.encodeUtf8)
                                      _v)
                               Data.Monoid.<>
                               Data.ProtoLens.Encoding.Wire.buildFieldSet
                                 (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ResponseDeliverTx where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_ResponseDeliverTx'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_ResponseDeliverTx'code x__)
                    (Control.DeepSeq.deepseq (_ResponseDeliverTx'data' x__)
                       (Control.DeepSeq.deepseq (_ResponseDeliverTx'log x__)
                          (Control.DeepSeq.deepseq (_ResponseDeliverTx'info x__)
                             (Control.DeepSeq.deepseq (_ResponseDeliverTx'gasWanted x__)
                                (Control.DeepSeq.deepseq (_ResponseDeliverTx'gasUsed x__)
                                   (Control.DeepSeq.deepseq (_ResponseDeliverTx'tags x__)
                                      (Control.DeepSeq.deepseq (_ResponseDeliverTx'codespace x__)
                                         (()))))))))))
{- | Fields :

    * 'Proto.Types_Fields.message' @:: Lens' ResponseEcho Data.Text.Text@
 -}
data ResponseEcho = ResponseEcho{_ResponseEcho'message ::
                                 !Data.Text.Text,
                                 _ResponseEcho'_unknownFields :: !Data.ProtoLens.FieldSet}
                      deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResponseEcho where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ResponseEcho "message"
           (Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ResponseEcho'message
               (\ x__ y__ -> x__{_ResponseEcho'message = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message ResponseEcho where
        messageName _ = Data.Text.pack "types.ResponseEcho"
        fieldsByTag
          = let message__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "message"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"message"))
                      :: Data.ProtoLens.FieldDescriptor ResponseEcho
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, message__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _ResponseEcho'_unknownFields
              (\ x__ y__ -> x__{_ResponseEcho'_unknownFields = y__})
        defMessage
          = ResponseEcho{_ResponseEcho'message = Data.ProtoLens.fieldDefault,
                         _ResponseEcho'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     ResponseEcho -> Data.ProtoLens.Encoding.Bytes.Parser ResponseEcho
                loop x
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 x)
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                10 -> do y <- (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                              Data.ProtoLens.Encoding.Bytes.getBytes
                                                                (Prelude.fromIntegral len)
                                                  Data.ProtoLens.Encoding.Bytes.runEither
                                                    (case Data.Text.Encoding.decodeUtf8' value of
                                                         Prelude.Left err -> Prelude.Left
                                                                               (Prelude.show err)
                                                         Prelude.Right r -> Prelude.Right r))
                                                Data.ProtoLens.Encoding.Bytes.<?> "message"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"message")
                                              y
                                              x)
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "ResponseEcho"
        buildMessage
          = (\ _x ->
               (let _v
                      = Lens.Family2.view (Data.ProtoLens.Field.field @"message") _x
                  in
                  if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty else
                    (Data.ProtoLens.Encoding.Bytes.putVarInt 10) Data.Monoid.<>
                      (((\ bs ->
                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                             Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Prelude.. Data.Text.Encoding.encodeUtf8)
                        _v)
                 Data.Monoid.<>
                 Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ResponseEcho where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_ResponseEcho'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_ResponseEcho'message x__) (())))
{- | Fields :

    * 'Proto.Types_Fields.validatorUpdates' @:: Lens' ResponseEndBlock [ValidatorUpdate]@
    * 'Proto.Types_Fields.vec'validatorUpdates' @:: Lens' ResponseEndBlock (Data.Vector.Vector ValidatorUpdate)@
    * 'Proto.Types_Fields.consensusParamUpdates' @:: Lens' ResponseEndBlock ConsensusParams@
    * 'Proto.Types_Fields.maybe'consensusParamUpdates' @:: Lens' ResponseEndBlock (Prelude.Maybe ConsensusParams)@
    * 'Proto.Types_Fields.tags' @:: Lens' ResponseEndBlock
  [Proto.Vendored.Tendermint.Tendermint.Libs.Common.Types.KVPair]@
    * 'Proto.Types_Fields.vec'tags' @:: Lens' ResponseEndBlock
  (Data.Vector.Vector
     Proto.Vendored.Tendermint.Tendermint.Libs.Common.Types.KVPair)@
 -}
data ResponseEndBlock = ResponseEndBlock{_ResponseEndBlock'validatorUpdates
                                         :: !(Data.Vector.Vector ValidatorUpdate),
                                         _ResponseEndBlock'consensusParamUpdates ::
                                         !(Prelude.Maybe ConsensusParams),
                                         _ResponseEndBlock'tags ::
                                         !(Data.Vector.Vector
                                             Proto.Vendored.Tendermint.Tendermint.Libs.Common.Types.KVPair),
                                         _ResponseEndBlock'_unknownFields ::
                                         !Data.ProtoLens.FieldSet}
                          deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResponseEndBlock where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ResponseEndBlock
           "validatorUpdates"
           ([ValidatorUpdate])
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ResponseEndBlock'validatorUpdates
               (\ x__ y__ -> x__{_ResponseEndBlock'validatorUpdates = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens Data.Vector.Generic.toList
                (\ _ y__ -> Data.Vector.Generic.fromList y__)
instance Data.ProtoLens.Field.HasField ResponseEndBlock
           "vec'validatorUpdates"
           (Data.Vector.Vector ValidatorUpdate)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ResponseEndBlock'validatorUpdates
               (\ x__ y__ -> x__{_ResponseEndBlock'validatorUpdates = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField ResponseEndBlock
           "consensusParamUpdates"
           (ConsensusParams)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens
               _ResponseEndBlock'consensusParamUpdates
               (\ x__ y__ -> x__{_ResponseEndBlock'consensusParamUpdates = y__}))
              Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Field.HasField ResponseEndBlock
           "maybe'consensusParamUpdates"
           (Prelude.Maybe ConsensusParams)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens
               _ResponseEndBlock'consensusParamUpdates
               (\ x__ y__ -> x__{_ResponseEndBlock'consensusParamUpdates = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField ResponseEndBlock "tags"
           ([Proto.Vendored.Tendermint.Tendermint.Libs.Common.Types.KVPair])
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ResponseEndBlock'tags
               (\ x__ y__ -> x__{_ResponseEndBlock'tags = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens Data.Vector.Generic.toList
                (\ _ y__ -> Data.Vector.Generic.fromList y__)
instance Data.ProtoLens.Field.HasField ResponseEndBlock "vec'tags"
           (Data.Vector.Vector
              Proto.Vendored.Tendermint.Tendermint.Libs.Common.Types.KVPair)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ResponseEndBlock'tags
               (\ x__ y__ -> x__{_ResponseEndBlock'tags = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message ResponseEndBlock where
        messageName _ = Data.Text.pack "types.ResponseEndBlock"
        fieldsByTag
          = let validatorUpdates__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "validator_updates"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ValidatorUpdate)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Data.ProtoLens.Field.field @"validatorUpdates"))
                      :: Data.ProtoLens.FieldDescriptor ResponseEndBlock
                consensusParamUpdates__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "consensus_param_updates"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ConsensusParams)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'consensusParamUpdates"))
                      :: Data.ProtoLens.FieldDescriptor ResponseEndBlock
                tags__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "tags"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Vendored.Tendermint.Tendermint.Libs.Common.Types.KVPair)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Data.ProtoLens.Field.field @"tags"))
                      :: Data.ProtoLens.FieldDescriptor ResponseEndBlock
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, validatorUpdates__field_descriptor),
                 (Data.ProtoLens.Tag 2, consensusParamUpdates__field_descriptor),
                 (Data.ProtoLens.Tag 3, tags__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _ResponseEndBlock'_unknownFields
              (\ x__ y__ -> x__{_ResponseEndBlock'_unknownFields = y__})
        defMessage
          = ResponseEndBlock{_ResponseEndBlock'validatorUpdates =
                               Data.Vector.Generic.empty,
                             _ResponseEndBlock'consensusParamUpdates = Prelude.Nothing,
                             _ResponseEndBlock'tags = Data.Vector.Generic.empty,
                             _ResponseEndBlock'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     ResponseEndBlock ->
                       Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector
                         Data.ProtoLens.Encoding.Growing.RealWorld
                         Proto.Vendored.Tendermint.Tendermint.Libs.Common.Types.KVPair
                         ->
                         Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector
                           Data.ProtoLens.Encoding.Growing.RealWorld
                           ValidatorUpdate
                           -> Data.ProtoLens.Encoding.Bytes.Parser ResponseEndBlock
                loop x mutable'tags mutable'validatorUpdates
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do frozen'tags <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'tags)
                            frozen'validatorUpdates <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                            mutable'validatorUpdates)
                            let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 (Lens.Family2.set (Data.ProtoLens.Field.field @"vec'tags")
                                    frozen'tags
                                    (Lens.Family2.set
                                       (Data.ProtoLens.Field.field @"vec'validatorUpdates")
                                       frozen'validatorUpdates
                                       x)))
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                10 -> do !y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                   Data.ProtoLens.Encoding.Bytes.isolate
                                                     (Prelude.fromIntegral len)
                                                     Data.ProtoLens.parseMessage)
                                                 Data.ProtoLens.Encoding.Bytes.<?>
                                                 "validator_updates"
                                         v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.append
                                                   mutable'validatorUpdates
                                                   y)
                                         loop x mutable'tags v
                                18 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?>
                                                "consensus_param_updates"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"consensusParamUpdates")
                                              y
                                              x)
                                           mutable'tags
                                           mutable'validatorUpdates
                                26 -> do !y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                   Data.ProtoLens.Encoding.Bytes.isolate
                                                     (Prelude.fromIntegral len)
                                                     Data.ProtoLens.parseMessage)
                                                 Data.ProtoLens.Encoding.Bytes.<?> "tags"
                                         v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.append mutable'tags
                                                   y)
                                         loop x v mutable'validatorUpdates
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
                                             mutable'tags
                                             mutable'validatorUpdates
              in
              (do mutable'tags <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
                  mutable'validatorUpdates <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                Data.ProtoLens.Encoding.Growing.new
                  loop Data.ProtoLens.defMessage mutable'tags
                    mutable'validatorUpdates)
                Data.ProtoLens.Encoding.Bytes.<?> "ResponseEndBlock"
        buildMessage
          = (\ _x ->
               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                  (\ _v ->
                     (Data.ProtoLens.Encoding.Bytes.putVarInt 10) Data.Monoid.<>
                       (((\ bs ->
                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                               (Prelude.fromIntegral (Data.ByteString.length bs)))
                              Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Prelude.. Data.ProtoLens.encodeMessage)
                         _v)
                  (Lens.Family2.view
                     (Data.ProtoLens.Field.field @"vec'validatorUpdates")
                     _x))
                 Data.Monoid.<>
                 (case
                    Lens.Family2.view
                      (Data.ProtoLens.Field.field @"maybe'consensusParamUpdates")
                      _x
                    of
                      (Prelude.Nothing) -> Data.Monoid.mempty
                      Prelude.Just _v -> (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                                           Data.Monoid.<>
                                           (((\ bs ->
                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                   (Prelude.fromIntegral
                                                      (Data.ByteString.length bs)))
                                                  Data.Monoid.<>
                                                  Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                              Prelude.. Data.ProtoLens.encodeMessage)
                                             _v)
                   Data.Monoid.<>
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v ->
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 26) Data.Monoid.<>
                           (((\ bs ->
                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                   (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Prelude.. Data.ProtoLens.encodeMessage)
                             _v)
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'tags") _x))
                     Data.Monoid.<>
                     Data.ProtoLens.Encoding.Wire.buildFieldSet
                       (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ResponseEndBlock where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_ResponseEndBlock'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_ResponseEndBlock'validatorUpdates x__)
                    (Control.DeepSeq.deepseq
                       (_ResponseEndBlock'consensusParamUpdates x__)
                       (Control.DeepSeq.deepseq (_ResponseEndBlock'tags x__) (())))))
{- | Fields :

    * 'Proto.Types_Fields.error' @:: Lens' ResponseException Data.Text.Text@
 -}
data ResponseException = ResponseException{_ResponseException'error
                                           :: !Data.Text.Text,
                                           _ResponseException'_unknownFields ::
                                           !Data.ProtoLens.FieldSet}
                           deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResponseException where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ResponseException "error"
           (Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ResponseException'error
               (\ x__ y__ -> x__{_ResponseException'error = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message ResponseException where
        messageName _ = Data.Text.pack "types.ResponseException"
        fieldsByTag
          = let error__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "error"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"error"))
                      :: Data.ProtoLens.FieldDescriptor ResponseException
              in
              Data.Map.fromList [(Data.ProtoLens.Tag 1, error__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _ResponseException'_unknownFields
              (\ x__ y__ -> x__{_ResponseException'_unknownFields = y__})
        defMessage
          = ResponseException{_ResponseException'error =
                                Data.ProtoLens.fieldDefault,
                              _ResponseException'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     ResponseException ->
                       Data.ProtoLens.Encoding.Bytes.Parser ResponseException
                loop x
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 x)
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                10 -> do y <- (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                              Data.ProtoLens.Encoding.Bytes.getBytes
                                                                (Prelude.fromIntegral len)
                                                  Data.ProtoLens.Encoding.Bytes.runEither
                                                    (case Data.Text.Encoding.decodeUtf8' value of
                                                         Prelude.Left err -> Prelude.Left
                                                                               (Prelude.show err)
                                                         Prelude.Right r -> Prelude.Right r))
                                                Data.ProtoLens.Encoding.Bytes.<?> "error"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"error") y
                                              x)
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "ResponseException"
        buildMessage
          = (\ _x ->
               (let _v
                      = Lens.Family2.view (Data.ProtoLens.Field.field @"error") _x
                  in
                  if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty else
                    (Data.ProtoLens.Encoding.Bytes.putVarInt 10) Data.Monoid.<>
                      (((\ bs ->
                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                             Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Prelude.. Data.Text.Encoding.encodeUtf8)
                        _v)
                 Data.Monoid.<>
                 Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ResponseException where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_ResponseException'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_ResponseException'error x__) (())))
{- | Fields :

 -}
data ResponseFlush = ResponseFlush{_ResponseFlush'_unknownFields ::
                                   !Data.ProtoLens.FieldSet}
                       deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResponseFlush where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message ResponseFlush where
        messageName _ = Data.Text.pack "types.ResponseFlush"
        fieldsByTag = let in Data.Map.fromList []
        unknownFields
          = Lens.Family2.Unchecked.lens _ResponseFlush'_unknownFields
              (\ x__ y__ -> x__{_ResponseFlush'_unknownFields = y__})
        defMessage = ResponseFlush{_ResponseFlush'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     ResponseFlush -> Data.ProtoLens.Encoding.Bytes.Parser ResponseFlush
                loop x
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 x)
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "ResponseFlush"
        buildMessage
          = (\ _x ->
               Data.ProtoLens.Encoding.Wire.buildFieldSet
                 (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ResponseFlush where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_ResponseFlush'_unknownFields x__) (()))
{- | Fields :

    * 'Proto.Types_Fields.data'' @:: Lens' ResponseInfo Data.Text.Text@
    * 'Proto.Types_Fields.version' @:: Lens' ResponseInfo Data.Text.Text@
    * 'Proto.Types_Fields.appVersion' @:: Lens' ResponseInfo Data.Word.Word64@
    * 'Proto.Types_Fields.lastBlockHeight' @:: Lens' ResponseInfo Data.Int.Int64@
    * 'Proto.Types_Fields.lastBlockAppHash' @:: Lens' ResponseInfo Data.ByteString.ByteString@
 -}
data ResponseInfo = ResponseInfo{_ResponseInfo'data' ::
                                 !Data.Text.Text,
                                 _ResponseInfo'version :: !Data.Text.Text,
                                 _ResponseInfo'appVersion :: !Data.Word.Word64,
                                 _ResponseInfo'lastBlockHeight :: !Data.Int.Int64,
                                 _ResponseInfo'lastBlockAppHash :: !Data.ByteString.ByteString,
                                 _ResponseInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
                      deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResponseInfo where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ResponseInfo "data'"
           (Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ResponseInfo'data'
               (\ x__ y__ -> x__{_ResponseInfo'data' = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField ResponseInfo "version"
           (Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ResponseInfo'version
               (\ x__ y__ -> x__{_ResponseInfo'version = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField ResponseInfo "appVersion"
           (Data.Word.Word64)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ResponseInfo'appVersion
               (\ x__ y__ -> x__{_ResponseInfo'appVersion = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField ResponseInfo
           "lastBlockHeight"
           (Data.Int.Int64)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ResponseInfo'lastBlockHeight
               (\ x__ y__ -> x__{_ResponseInfo'lastBlockHeight = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField ResponseInfo
           "lastBlockAppHash"
           (Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ResponseInfo'lastBlockAppHash
               (\ x__ y__ -> x__{_ResponseInfo'lastBlockAppHash = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message ResponseInfo where
        messageName _ = Data.Text.pack "types.ResponseInfo"
        fieldsByTag
          = let data'__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "data"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"data'"))
                      :: Data.ProtoLens.FieldDescriptor ResponseInfo
                version__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "version"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"version"))
                      :: Data.ProtoLens.FieldDescriptor ResponseInfo
                appVersion__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "app_version"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"appVersion"))
                      :: Data.ProtoLens.FieldDescriptor ResponseInfo
                lastBlockHeight__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "last_block_height"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"lastBlockHeight"))
                      :: Data.ProtoLens.FieldDescriptor ResponseInfo
                lastBlockAppHash__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "last_block_app_hash"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"lastBlockAppHash"))
                      :: Data.ProtoLens.FieldDescriptor ResponseInfo
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, data'__field_descriptor),
                 (Data.ProtoLens.Tag 2, version__field_descriptor),
                 (Data.ProtoLens.Tag 3, appVersion__field_descriptor),
                 (Data.ProtoLens.Tag 4, lastBlockHeight__field_descriptor),
                 (Data.ProtoLens.Tag 5, lastBlockAppHash__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _ResponseInfo'_unknownFields
              (\ x__ y__ -> x__{_ResponseInfo'_unknownFields = y__})
        defMessage
          = ResponseInfo{_ResponseInfo'data' = Data.ProtoLens.fieldDefault,
                         _ResponseInfo'version = Data.ProtoLens.fieldDefault,
                         _ResponseInfo'appVersion = Data.ProtoLens.fieldDefault,
                         _ResponseInfo'lastBlockHeight = Data.ProtoLens.fieldDefault,
                         _ResponseInfo'lastBlockAppHash = Data.ProtoLens.fieldDefault,
                         _ResponseInfo'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     ResponseInfo -> Data.ProtoLens.Encoding.Bytes.Parser ResponseInfo
                loop x
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 x)
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                10 -> do y <- (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                              Data.ProtoLens.Encoding.Bytes.getBytes
                                                                (Prelude.fromIntegral len)
                                                  Data.ProtoLens.Encoding.Bytes.runEither
                                                    (case Data.Text.Encoding.decodeUtf8' value of
                                                         Prelude.Left err -> Prelude.Left
                                                                               (Prelude.show err)
                                                         Prelude.Right r -> Prelude.Right r))
                                                Data.ProtoLens.Encoding.Bytes.<?> "data"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"data'") y
                                              x)
                                18 -> do y <- (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                              Data.ProtoLens.Encoding.Bytes.getBytes
                                                                (Prelude.fromIntegral len)
                                                  Data.ProtoLens.Encoding.Bytes.runEither
                                                    (case Data.Text.Encoding.decodeUtf8' value of
                                                         Prelude.Left err -> Prelude.Left
                                                                               (Prelude.show err)
                                                         Prelude.Right r -> Prelude.Right r))
                                                Data.ProtoLens.Encoding.Bytes.<?> "version"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"version")
                                              y
                                              x)
                                24 -> do y <- (Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                Data.ProtoLens.Encoding.Bytes.<?> "app_version"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"appVersion")
                                              y
                                              x)
                                32 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                 Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                Data.ProtoLens.Encoding.Bytes.<?>
                                                "last_block_height"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"lastBlockHeight")
                                              y
                                              x)
                                42 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.getBytes
                                                    (Prelude.fromIntegral len))
                                                Data.ProtoLens.Encoding.Bytes.<?>
                                                "last_block_app_hash"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"lastBlockAppHash")
                                              y
                                              x)
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "ResponseInfo"
        buildMessage
          = (\ _x ->
               (let _v
                      = Lens.Family2.view (Data.ProtoLens.Field.field @"data'") _x
                  in
                  if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty else
                    (Data.ProtoLens.Encoding.Bytes.putVarInt 10) Data.Monoid.<>
                      (((\ bs ->
                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                             Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Prelude.. Data.Text.Encoding.encodeUtf8)
                        _v)
                 Data.Monoid.<>
                 (let _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"version") _x
                    in
                    if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                      Data.Monoid.mempty else
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 18) Data.Monoid.<>
                        (((\ bs ->
                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                (Prelude.fromIntegral (Data.ByteString.length bs)))
                               Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           Prelude.. Data.Text.Encoding.encodeUtf8)
                          _v)
                   Data.Monoid.<>
                   (let _v
                          = Lens.Family2.view (Data.ProtoLens.Field.field @"appVersion") _x
                      in
                      if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                        Data.Monoid.mempty else
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 24) Data.Monoid.<>
                          Data.ProtoLens.Encoding.Bytes.putVarInt _v)
                     Data.Monoid.<>
                     (let _v
                            = Lens.Family2.view (Data.ProtoLens.Field.field @"lastBlockHeight")
                                _x
                        in
                        if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty else
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 32) Data.Monoid.<>
                            ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                               Prelude.fromIntegral)
                              _v)
                       Data.Monoid.<>
                       (let _v
                              = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"lastBlockAppHash")
                                  _x
                          in
                          if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                            Data.Monoid.mempty else
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 42) Data.Monoid.<>
                              (\ bs ->
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs)
                                _v)
                         Data.Monoid.<>
                         Data.ProtoLens.Encoding.Wire.buildFieldSet
                           (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ResponseInfo where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_ResponseInfo'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_ResponseInfo'data' x__)
                    (Control.DeepSeq.deepseq (_ResponseInfo'version x__)
                       (Control.DeepSeq.deepseq (_ResponseInfo'appVersion x__)
                          (Control.DeepSeq.deepseq (_ResponseInfo'lastBlockHeight x__)
                             (Control.DeepSeq.deepseq (_ResponseInfo'lastBlockAppHash x__)
                                (())))))))
{- | Fields :

    * 'Proto.Types_Fields.consensusParams' @:: Lens' ResponseInitChain ConsensusParams@
    * 'Proto.Types_Fields.maybe'consensusParams' @:: Lens' ResponseInitChain (Prelude.Maybe ConsensusParams)@
    * 'Proto.Types_Fields.validators' @:: Lens' ResponseInitChain [ValidatorUpdate]@
    * 'Proto.Types_Fields.vec'validators' @:: Lens' ResponseInitChain (Data.Vector.Vector ValidatorUpdate)@
 -}
data ResponseInitChain = ResponseInitChain{_ResponseInitChain'consensusParams
                                           :: !(Prelude.Maybe ConsensusParams),
                                           _ResponseInitChain'validators ::
                                           !(Data.Vector.Vector ValidatorUpdate),
                                           _ResponseInitChain'_unknownFields ::
                                           !Data.ProtoLens.FieldSet}
                           deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResponseInitChain where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ResponseInitChain
           "consensusParams"
           (ConsensusParams)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ResponseInitChain'consensusParams
               (\ x__ y__ -> x__{_ResponseInitChain'consensusParams = y__}))
              Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Field.HasField ResponseInitChain
           "maybe'consensusParams"
           (Prelude.Maybe ConsensusParams)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ResponseInitChain'consensusParams
               (\ x__ y__ -> x__{_ResponseInitChain'consensusParams = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField ResponseInitChain
           "validators"
           ([ValidatorUpdate])
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ResponseInitChain'validators
               (\ x__ y__ -> x__{_ResponseInitChain'validators = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens Data.Vector.Generic.toList
                (\ _ y__ -> Data.Vector.Generic.fromList y__)
instance Data.ProtoLens.Field.HasField ResponseInitChain
           "vec'validators"
           (Data.Vector.Vector ValidatorUpdate)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ResponseInitChain'validators
               (\ x__ y__ -> x__{_ResponseInitChain'validators = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message ResponseInitChain where
        messageName _ = Data.Text.pack "types.ResponseInitChain"
        fieldsByTag
          = let consensusParams__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "consensus_params"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ConsensusParams)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'consensusParams"))
                      :: Data.ProtoLens.FieldDescriptor ResponseInitChain
                validators__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "validators"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ValidatorUpdate)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Data.ProtoLens.Field.field @"validators"))
                      :: Data.ProtoLens.FieldDescriptor ResponseInitChain
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, consensusParams__field_descriptor),
                 (Data.ProtoLens.Tag 2, validators__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _ResponseInitChain'_unknownFields
              (\ x__ y__ -> x__{_ResponseInitChain'_unknownFields = y__})
        defMessage
          = ResponseInitChain{_ResponseInitChain'consensusParams =
                                Prelude.Nothing,
                              _ResponseInitChain'validators = Data.Vector.Generic.empty,
                              _ResponseInitChain'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     ResponseInitChain ->
                       Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector
                         Data.ProtoLens.Encoding.Growing.RealWorld
                         ValidatorUpdate
                         -> Data.ProtoLens.Encoding.Bytes.Parser ResponseInitChain
                loop x mutable'validators
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do frozen'validators <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                   (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                      mutable'validators)
                            let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 (Lens.Family2.set (Data.ProtoLens.Field.field @"vec'validators")
                                    frozen'validators
                                    x))
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                10 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?> "consensus_params"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"consensusParams")
                                              y
                                              x)
                                           mutable'validators
                                18 -> do !y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                   Data.ProtoLens.Encoding.Bytes.isolate
                                                     (Prelude.fromIntegral len)
                                                     Data.ProtoLens.parseMessage)
                                                 Data.ProtoLens.Encoding.Bytes.<?> "validators"
                                         v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.append
                                                   mutable'validators
                                                   y)
                                         loop x v
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
                                             mutable'validators
              in
              (do mutable'validators <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          Data.ProtoLens.Encoding.Growing.new
                  loop Data.ProtoLens.defMessage mutable'validators)
                Data.ProtoLens.Encoding.Bytes.<?> "ResponseInitChain"
        buildMessage
          = (\ _x ->
               (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'consensusParams")
                    _x
                  of
                    (Prelude.Nothing) -> Data.Monoid.mempty
                    Prelude.Just _v -> (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                                         Data.Monoid.<>
                                         (((\ bs ->
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                                Data.Monoid.<>
                                                Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                            Prelude.. Data.ProtoLens.encodeMessage)
                                           _v)
                 Data.Monoid.<>
                 (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                    (\ _v ->
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18) Data.Monoid.<>
                         (((\ bs ->
                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Prelude.. Data.ProtoLens.encodeMessage)
                           _v)
                    (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'validators")
                       _x))
                   Data.Monoid.<>
                   Data.ProtoLens.Encoding.Wire.buildFieldSet
                     (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ResponseInitChain where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_ResponseInitChain'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_ResponseInitChain'consensusParams x__)
                    (Control.DeepSeq.deepseq (_ResponseInitChain'validators x__)
                       (()))))
{- | Fields :

    * 'Proto.Types_Fields.code' @:: Lens' ResponseQuery Data.Word.Word32@
    * 'Proto.Types_Fields.log' @:: Lens' ResponseQuery Data.Text.Text@
    * 'Proto.Types_Fields.info' @:: Lens' ResponseQuery Data.Text.Text@
    * 'Proto.Types_Fields.index' @:: Lens' ResponseQuery Data.Int.Int64@
    * 'Proto.Types_Fields.key' @:: Lens' ResponseQuery Data.ByteString.ByteString@
    * 'Proto.Types_Fields.value' @:: Lens' ResponseQuery Data.ByteString.ByteString@
    * 'Proto.Types_Fields.proof' @:: Lens' ResponseQuery
  Proto.Vendored.Tendermint.Tendermint.Crypto.Merkle.Merkle.Proof@
    * 'Proto.Types_Fields.maybe'proof' @:: Lens' ResponseQuery
  (Prelude.Maybe
     Proto.Vendored.Tendermint.Tendermint.Crypto.Merkle.Merkle.Proof)@
    * 'Proto.Types_Fields.height' @:: Lens' ResponseQuery Data.Int.Int64@
    * 'Proto.Types_Fields.codespace' @:: Lens' ResponseQuery Data.Text.Text@
 -}
data ResponseQuery = ResponseQuery{_ResponseQuery'code ::
                                   !Data.Word.Word32,
                                   _ResponseQuery'log :: !Data.Text.Text,
                                   _ResponseQuery'info :: !Data.Text.Text,
                                   _ResponseQuery'index :: !Data.Int.Int64,
                                   _ResponseQuery'key :: !Data.ByteString.ByteString,
                                   _ResponseQuery'value :: !Data.ByteString.ByteString,
                                   _ResponseQuery'proof ::
                                   !(Prelude.Maybe
                                       Proto.Vendored.Tendermint.Tendermint.Crypto.Merkle.Merkle.Proof),
                                   _ResponseQuery'height :: !Data.Int.Int64,
                                   _ResponseQuery'codespace :: !Data.Text.Text,
                                   _ResponseQuery'_unknownFields :: !Data.ProtoLens.FieldSet}
                       deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResponseQuery where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ResponseQuery "code"
           (Data.Word.Word32)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ResponseQuery'code
               (\ x__ y__ -> x__{_ResponseQuery'code = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField ResponseQuery "log"
           (Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ResponseQuery'log
               (\ x__ y__ -> x__{_ResponseQuery'log = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField ResponseQuery "info"
           (Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ResponseQuery'info
               (\ x__ y__ -> x__{_ResponseQuery'info = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField ResponseQuery "index"
           (Data.Int.Int64)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ResponseQuery'index
               (\ x__ y__ -> x__{_ResponseQuery'index = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField ResponseQuery "key"
           (Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ResponseQuery'key
               (\ x__ y__ -> x__{_ResponseQuery'key = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField ResponseQuery "value"
           (Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ResponseQuery'value
               (\ x__ y__ -> x__{_ResponseQuery'value = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField ResponseQuery "proof"
           (Proto.Vendored.Tendermint.Tendermint.Crypto.Merkle.Merkle.Proof)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ResponseQuery'proof
               (\ x__ y__ -> x__{_ResponseQuery'proof = y__}))
              Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Field.HasField ResponseQuery "maybe'proof"
           (Prelude.Maybe
              Proto.Vendored.Tendermint.Tendermint.Crypto.Merkle.Merkle.Proof)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ResponseQuery'proof
               (\ x__ y__ -> x__{_ResponseQuery'proof = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField ResponseQuery "height"
           (Data.Int.Int64)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ResponseQuery'height
               (\ x__ y__ -> x__{_ResponseQuery'height = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField ResponseQuery "codespace"
           (Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ResponseQuery'codespace
               (\ x__ y__ -> x__{_ResponseQuery'codespace = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message ResponseQuery where
        messageName _ = Data.Text.pack "types.ResponseQuery"
        fieldsByTag
          = let code__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "code"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"code"))
                      :: Data.ProtoLens.FieldDescriptor ResponseQuery
                log__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "log"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"log"))
                      :: Data.ProtoLens.FieldDescriptor ResponseQuery
                info__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "info"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"info"))
                      :: Data.ProtoLens.FieldDescriptor ResponseQuery
                index__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "index"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"index"))
                      :: Data.ProtoLens.FieldDescriptor ResponseQuery
                key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"key"))
                      :: Data.ProtoLens.FieldDescriptor ResponseQuery
                value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"value"))
                      :: Data.ProtoLens.FieldDescriptor ResponseQuery
                proof__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "proof"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Vendored.Tendermint.Tendermint.Crypto.Merkle.Merkle.Proof)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'proof"))
                      :: Data.ProtoLens.FieldDescriptor ResponseQuery
                height__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "height"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"height"))
                      :: Data.ProtoLens.FieldDescriptor ResponseQuery
                codespace__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "codespace"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"codespace"))
                      :: Data.ProtoLens.FieldDescriptor ResponseQuery
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, code__field_descriptor),
                 (Data.ProtoLens.Tag 3, log__field_descriptor),
                 (Data.ProtoLens.Tag 4, info__field_descriptor),
                 (Data.ProtoLens.Tag 5, index__field_descriptor),
                 (Data.ProtoLens.Tag 6, key__field_descriptor),
                 (Data.ProtoLens.Tag 7, value__field_descriptor),
                 (Data.ProtoLens.Tag 8, proof__field_descriptor),
                 (Data.ProtoLens.Tag 9, height__field_descriptor),
                 (Data.ProtoLens.Tag 10, codespace__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _ResponseQuery'_unknownFields
              (\ x__ y__ -> x__{_ResponseQuery'_unknownFields = y__})
        defMessage
          = ResponseQuery{_ResponseQuery'code = Data.ProtoLens.fieldDefault,
                          _ResponseQuery'log = Data.ProtoLens.fieldDefault,
                          _ResponseQuery'info = Data.ProtoLens.fieldDefault,
                          _ResponseQuery'index = Data.ProtoLens.fieldDefault,
                          _ResponseQuery'key = Data.ProtoLens.fieldDefault,
                          _ResponseQuery'value = Data.ProtoLens.fieldDefault,
                          _ResponseQuery'proof = Prelude.Nothing,
                          _ResponseQuery'height = Data.ProtoLens.fieldDefault,
                          _ResponseQuery'codespace = Data.ProtoLens.fieldDefault,
                          _ResponseQuery'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     ResponseQuery -> Data.ProtoLens.Encoding.Bytes.Parser ResponseQuery
                loop x
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 x)
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                8 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                Data.ProtoLens.Encoding.Bytes.getVarInt)
                                               Data.ProtoLens.Encoding.Bytes.<?> "code"
                                        loop
                                          (Lens.Family2.set (Data.ProtoLens.Field.field @"code") y
                                             x)
                                26 -> do y <- (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                              Data.ProtoLens.Encoding.Bytes.getBytes
                                                                (Prelude.fromIntegral len)
                                                  Data.ProtoLens.Encoding.Bytes.runEither
                                                    (case Data.Text.Encoding.decodeUtf8' value of
                                                         Prelude.Left err -> Prelude.Left
                                                                               (Prelude.show err)
                                                         Prelude.Right r -> Prelude.Right r))
                                                Data.ProtoLens.Encoding.Bytes.<?> "log"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"log") y
                                              x)
                                34 -> do y <- (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                              Data.ProtoLens.Encoding.Bytes.getBytes
                                                                (Prelude.fromIntegral len)
                                                  Data.ProtoLens.Encoding.Bytes.runEither
                                                    (case Data.Text.Encoding.decodeUtf8' value of
                                                         Prelude.Left err -> Prelude.Left
                                                                               (Prelude.show err)
                                                         Prelude.Right r -> Prelude.Right r))
                                                Data.ProtoLens.Encoding.Bytes.<?> "info"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"info") y
                                              x)
                                40 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                 Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                Data.ProtoLens.Encoding.Bytes.<?> "index"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"index") y
                                              x)
                                50 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.getBytes
                                                    (Prelude.fromIntegral len))
                                                Data.ProtoLens.Encoding.Bytes.<?> "key"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y
                                              x)
                                58 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.getBytes
                                                    (Prelude.fromIntegral len))
                                                Data.ProtoLens.Encoding.Bytes.<?> "value"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y
                                              x)
                                66 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?> "proof"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"proof") y
                                              x)
                                72 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                 Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                Data.ProtoLens.Encoding.Bytes.<?> "height"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"height")
                                              y
                                              x)
                                82 -> do y <- (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                              Data.ProtoLens.Encoding.Bytes.getBytes
                                                                (Prelude.fromIntegral len)
                                                  Data.ProtoLens.Encoding.Bytes.runEither
                                                    (case Data.Text.Encoding.decodeUtf8' value of
                                                         Prelude.Left err -> Prelude.Left
                                                                               (Prelude.show err)
                                                         Prelude.Right r -> Prelude.Right r))
                                                Data.ProtoLens.Encoding.Bytes.<?> "codespace"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"codespace")
                                              y
                                              x)
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "ResponseQuery"
        buildMessage
          = (\ _x ->
               (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"code") _x
                  in
                  if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty else
                    (Data.ProtoLens.Encoding.Bytes.putVarInt 8) Data.Monoid.<>
                      ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                         Prelude.fromIntegral)
                        _v)
                 Data.Monoid.<>
                 (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"log") _x
                    in
                    if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                      Data.Monoid.mempty else
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 26) Data.Monoid.<>
                        (((\ bs ->
                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                (Prelude.fromIntegral (Data.ByteString.length bs)))
                               Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           Prelude.. Data.Text.Encoding.encodeUtf8)
                          _v)
                   Data.Monoid.<>
                   (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"info") _x
                      in
                      if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                        Data.Monoid.mempty else
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 34) Data.Monoid.<>
                          (((\ bs ->
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Prelude.. Data.Text.Encoding.encodeUtf8)
                            _v)
                     Data.Monoid.<>
                     (let _v
                            = Lens.Family2.view (Data.ProtoLens.Field.field @"index") _x
                        in
                        if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty else
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 40) Data.Monoid.<>
                            ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                               Prelude.fromIntegral)
                              _v)
                       Data.Monoid.<>
                       (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
                          in
                          if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                            Data.Monoid.mempty else
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 50) Data.Monoid.<>
                              (\ bs ->
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs)
                                _v)
                         Data.Monoid.<>
                         (let _v
                                = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
                            in
                            if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                              Data.Monoid.mempty else
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 58) Data.Monoid.<>
                                (\ bs ->
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                      (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs)
                                  _v)
                           Data.Monoid.<>
                           (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'proof") _x of
                                (Prelude.Nothing) -> Data.Monoid.mempty
                                Prelude.Just _v -> (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                                     Data.Monoid.<>
                                                     (((\ bs ->
                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             (Prelude.fromIntegral
                                                                (Data.ByteString.length bs)))
                                                            Data.Monoid.<>
                                                            Data.ProtoLens.Encoding.Bytes.putBytes
                                                              bs))
                                                        Prelude.. Data.ProtoLens.encodeMessage)
                                                       _v)
                             Data.Monoid.<>
                             (let _v
                                    = Lens.Family2.view (Data.ProtoLens.Field.field @"height") _x
                                in
                                if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                                  Data.Monoid.mempty else
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 72) Data.Monoid.<>
                                    ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                                       Prelude.fromIntegral)
                                      _v)
                               Data.Monoid.<>
                               (let _v
                                      = Lens.Family2.view (Data.ProtoLens.Field.field @"codespace")
                                          _x
                                  in
                                  if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                                    Data.Monoid.mempty else
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 82) Data.Monoid.<>
                                      (((\ bs ->
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                             Data.Monoid.<>
                                             Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Prelude.. Data.Text.Encoding.encodeUtf8)
                                        _v)
                                 Data.Monoid.<>
                                 Data.ProtoLens.Encoding.Wire.buildFieldSet
                                   (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ResponseQuery where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_ResponseQuery'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_ResponseQuery'code x__)
                    (Control.DeepSeq.deepseq (_ResponseQuery'log x__)
                       (Control.DeepSeq.deepseq (_ResponseQuery'info x__)
                          (Control.DeepSeq.deepseq (_ResponseQuery'index x__)
                             (Control.DeepSeq.deepseq (_ResponseQuery'key x__)
                                (Control.DeepSeq.deepseq (_ResponseQuery'value x__)
                                   (Control.DeepSeq.deepseq (_ResponseQuery'proof x__)
                                      (Control.DeepSeq.deepseq (_ResponseQuery'height x__)
                                         (Control.DeepSeq.deepseq (_ResponseQuery'codespace x__)
                                            (())))))))))))
{- | Fields :

    * 'Proto.Types_Fields.code' @:: Lens' ResponseSetOption Data.Word.Word32@
    * 'Proto.Types_Fields.log' @:: Lens' ResponseSetOption Data.Text.Text@
    * 'Proto.Types_Fields.info' @:: Lens' ResponseSetOption Data.Text.Text@
 -}
data ResponseSetOption = ResponseSetOption{_ResponseSetOption'code
                                           :: !Data.Word.Word32,
                                           _ResponseSetOption'log :: !Data.Text.Text,
                                           _ResponseSetOption'info :: !Data.Text.Text,
                                           _ResponseSetOption'_unknownFields ::
                                           !Data.ProtoLens.FieldSet}
                           deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResponseSetOption where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ResponseSetOption "code"
           (Data.Word.Word32)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ResponseSetOption'code
               (\ x__ y__ -> x__{_ResponseSetOption'code = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField ResponseSetOption "log"
           (Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ResponseSetOption'log
               (\ x__ y__ -> x__{_ResponseSetOption'log = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField ResponseSetOption "info"
           (Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ResponseSetOption'info
               (\ x__ y__ -> x__{_ResponseSetOption'info = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message ResponseSetOption where
        messageName _ = Data.Text.pack "types.ResponseSetOption"
        fieldsByTag
          = let code__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "code"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"code"))
                      :: Data.ProtoLens.FieldDescriptor ResponseSetOption
                log__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "log"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"log"))
                      :: Data.ProtoLens.FieldDescriptor ResponseSetOption
                info__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "info"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"info"))
                      :: Data.ProtoLens.FieldDescriptor ResponseSetOption
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, code__field_descriptor),
                 (Data.ProtoLens.Tag 3, log__field_descriptor),
                 (Data.ProtoLens.Tag 4, info__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _ResponseSetOption'_unknownFields
              (\ x__ y__ -> x__{_ResponseSetOption'_unknownFields = y__})
        defMessage
          = ResponseSetOption{_ResponseSetOption'code =
                                Data.ProtoLens.fieldDefault,
                              _ResponseSetOption'log = Data.ProtoLens.fieldDefault,
                              _ResponseSetOption'info = Data.ProtoLens.fieldDefault,
                              _ResponseSetOption'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     ResponseSetOption ->
                       Data.ProtoLens.Encoding.Bytes.Parser ResponseSetOption
                loop x
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 x)
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                8 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                Data.ProtoLens.Encoding.Bytes.getVarInt)
                                               Data.ProtoLens.Encoding.Bytes.<?> "code"
                                        loop
                                          (Lens.Family2.set (Data.ProtoLens.Field.field @"code") y
                                             x)
                                26 -> do y <- (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                              Data.ProtoLens.Encoding.Bytes.getBytes
                                                                (Prelude.fromIntegral len)
                                                  Data.ProtoLens.Encoding.Bytes.runEither
                                                    (case Data.Text.Encoding.decodeUtf8' value of
                                                         Prelude.Left err -> Prelude.Left
                                                                               (Prelude.show err)
                                                         Prelude.Right r -> Prelude.Right r))
                                                Data.ProtoLens.Encoding.Bytes.<?> "log"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"log") y
                                              x)
                                34 -> do y <- (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                              Data.ProtoLens.Encoding.Bytes.getBytes
                                                                (Prelude.fromIntegral len)
                                                  Data.ProtoLens.Encoding.Bytes.runEither
                                                    (case Data.Text.Encoding.decodeUtf8' value of
                                                         Prelude.Left err -> Prelude.Left
                                                                               (Prelude.show err)
                                                         Prelude.Right r -> Prelude.Right r))
                                                Data.ProtoLens.Encoding.Bytes.<?> "info"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"info") y
                                              x)
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "ResponseSetOption"
        buildMessage
          = (\ _x ->
               (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"code") _x
                  in
                  if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty else
                    (Data.ProtoLens.Encoding.Bytes.putVarInt 8) Data.Monoid.<>
                      ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                         Prelude.fromIntegral)
                        _v)
                 Data.Monoid.<>
                 (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"log") _x
                    in
                    if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                      Data.Monoid.mempty else
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 26) Data.Monoid.<>
                        (((\ bs ->
                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                (Prelude.fromIntegral (Data.ByteString.length bs)))
                               Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           Prelude.. Data.Text.Encoding.encodeUtf8)
                          _v)
                   Data.Monoid.<>
                   (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"info") _x
                      in
                      if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                        Data.Monoid.mempty else
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 34) Data.Monoid.<>
                          (((\ bs ->
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Prelude.. Data.Text.Encoding.encodeUtf8)
                            _v)
                     Data.Monoid.<>
                     Data.ProtoLens.Encoding.Wire.buildFieldSet
                       (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ResponseSetOption where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_ResponseSetOption'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_ResponseSetOption'code x__)
                    (Control.DeepSeq.deepseq (_ResponseSetOption'log x__)
                       (Control.DeepSeq.deepseq (_ResponseSetOption'info x__) (())))))
{- | Fields :

    * 'Proto.Types_Fields.address' @:: Lens' Validator Data.ByteString.ByteString@
    * 'Proto.Types_Fields.power' @:: Lens' Validator Data.Int.Int64@
 -}
data Validator = Validator{_Validator'address ::
                           !Data.ByteString.ByteString,
                           _Validator'power :: !Data.Int.Int64,
                           _Validator'_unknownFields :: !Data.ProtoLens.FieldSet}
                   deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Validator where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Validator "address"
           (Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Validator'address
               (\ x__ y__ -> x__{_Validator'address = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField Validator "power"
           (Data.Int.Int64)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Validator'power
               (\ x__ y__ -> x__{_Validator'power = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message Validator where
        messageName _ = Data.Text.pack "types.Validator"
        fieldsByTag
          = let address__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "address"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"address"))
                      :: Data.ProtoLens.FieldDescriptor Validator
                power__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "power"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"power"))
                      :: Data.ProtoLens.FieldDescriptor Validator
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, address__field_descriptor),
                 (Data.ProtoLens.Tag 3, power__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _Validator'_unknownFields
              (\ x__ y__ -> x__{_Validator'_unknownFields = y__})
        defMessage
          = Validator{_Validator'address = Data.ProtoLens.fieldDefault,
                      _Validator'power = Data.ProtoLens.fieldDefault,
                      _Validator'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     Validator -> Data.ProtoLens.Encoding.Bytes.Parser Validator
                loop x
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 x)
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                10 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.getBytes
                                                    (Prelude.fromIntegral len))
                                                Data.ProtoLens.Encoding.Bytes.<?> "address"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"address")
                                              y
                                              x)
                                24 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                 Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                Data.ProtoLens.Encoding.Bytes.<?> "power"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"power") y
                                              x)
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "Validator"
        buildMessage
          = (\ _x ->
               (let _v
                      = Lens.Family2.view (Data.ProtoLens.Field.field @"address") _x
                  in
                  if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty else
                    (Data.ProtoLens.Encoding.Bytes.putVarInt 10) Data.Monoid.<>
                      (\ bs ->
                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                           Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs)
                        _v)
                 Data.Monoid.<>
                 (let _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"power") _x
                    in
                    if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                      Data.Monoid.mempty else
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 24) Data.Monoid.<>
                        ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                           Prelude.fromIntegral)
                          _v)
                   Data.Monoid.<>
                   Data.ProtoLens.Encoding.Wire.buildFieldSet
                     (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Validator where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_Validator'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_Validator'address x__)
                    (Control.DeepSeq.deepseq (_Validator'power x__) (()))))
{- | Fields :

    * 'Proto.Types_Fields.pubKeyTypes' @:: Lens' ValidatorParams [Data.Text.Text]@
    * 'Proto.Types_Fields.vec'pubKeyTypes' @:: Lens' ValidatorParams (Data.Vector.Vector Data.Text.Text)@
 -}
data ValidatorParams = ValidatorParams{_ValidatorParams'pubKeyTypes
                                       :: !(Data.Vector.Vector Data.Text.Text),
                                       _ValidatorParams'_unknownFields :: !Data.ProtoLens.FieldSet}
                         deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ValidatorParams where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ValidatorParams
           "pubKeyTypes"
           ([Data.Text.Text])
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ValidatorParams'pubKeyTypes
               (\ x__ y__ -> x__{_ValidatorParams'pubKeyTypes = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens Data.Vector.Generic.toList
                (\ _ y__ -> Data.Vector.Generic.fromList y__)
instance Data.ProtoLens.Field.HasField ValidatorParams
           "vec'pubKeyTypes"
           (Data.Vector.Vector Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ValidatorParams'pubKeyTypes
               (\ x__ y__ -> x__{_ValidatorParams'pubKeyTypes = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message ValidatorParams where
        messageName _ = Data.Text.pack "types.ValidatorParams"
        fieldsByTag
          = let pubKeyTypes__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "pub_key_types"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Data.ProtoLens.Field.field @"pubKeyTypes"))
                      :: Data.ProtoLens.FieldDescriptor ValidatorParams
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, pubKeyTypes__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _ValidatorParams'_unknownFields
              (\ x__ y__ -> x__{_ValidatorParams'_unknownFields = y__})
        defMessage
          = ValidatorParams{_ValidatorParams'pubKeyTypes =
                              Data.Vector.Generic.empty,
                            _ValidatorParams'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     ValidatorParams ->
                       Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector
                         Data.ProtoLens.Encoding.Growing.RealWorld
                         Data.Text.Text
                         -> Data.ProtoLens.Encoding.Bytes.Parser ValidatorParams
                loop x mutable'pubKeyTypes
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do frozen'pubKeyTypes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                    (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                       mutable'pubKeyTypes)
                            let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 (Lens.Family2.set (Data.ProtoLens.Field.field @"vec'pubKeyTypes")
                                    frozen'pubKeyTypes
                                    x))
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                10 -> do !y <- (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                               Data.ProtoLens.Encoding.Bytes.getBytes
                                                                 (Prelude.fromIntegral len)
                                                   Data.ProtoLens.Encoding.Bytes.runEither
                                                     (case Data.Text.Encoding.decodeUtf8' value of
                                                          Prelude.Left err -> Prelude.Left
                                                                                (Prelude.show err)
                                                          Prelude.Right r -> Prelude.Right r))
                                                 Data.ProtoLens.Encoding.Bytes.<?> "pub_key_types"
                                         v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.append
                                                   mutable'pubKeyTypes
                                                   y)
                                         loop x v
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
                                             mutable'pubKeyTypes
              in
              (do mutable'pubKeyTypes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           Data.ProtoLens.Encoding.Growing.new
                  loop Data.ProtoLens.defMessage mutable'pubKeyTypes)
                Data.ProtoLens.Encoding.Bytes.<?> "ValidatorParams"
        buildMessage
          = (\ _x ->
               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                  (\ _v ->
                     (Data.ProtoLens.Encoding.Bytes.putVarInt 10) Data.Monoid.<>
                       (((\ bs ->
                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                               (Prelude.fromIntegral (Data.ByteString.length bs)))
                              Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Prelude.. Data.Text.Encoding.encodeUtf8)
                         _v)
                  (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'pubKeyTypes")
                     _x))
                 Data.Monoid.<>
                 Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ValidatorParams where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_ValidatorParams'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_ValidatorParams'pubKeyTypes x__) (())))
{- | Fields :

    * 'Proto.Types_Fields.pubKey' @:: Lens' ValidatorUpdate PubKey@
    * 'Proto.Types_Fields.maybe'pubKey' @:: Lens' ValidatorUpdate (Prelude.Maybe PubKey)@
    * 'Proto.Types_Fields.power' @:: Lens' ValidatorUpdate Data.Int.Int64@
 -}
data ValidatorUpdate = ValidatorUpdate{_ValidatorUpdate'pubKey ::
                                       !(Prelude.Maybe PubKey),
                                       _ValidatorUpdate'power :: !Data.Int.Int64,
                                       _ValidatorUpdate'_unknownFields :: !Data.ProtoLens.FieldSet}
                         deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ValidatorUpdate where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ValidatorUpdate "pubKey"
           (PubKey)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ValidatorUpdate'pubKey
               (\ x__ y__ -> x__{_ValidatorUpdate'pubKey = y__}))
              Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Field.HasField ValidatorUpdate
           "maybe'pubKey"
           (Prelude.Maybe PubKey)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ValidatorUpdate'pubKey
               (\ x__ y__ -> x__{_ValidatorUpdate'pubKey = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField ValidatorUpdate "power"
           (Data.Int.Int64)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ValidatorUpdate'power
               (\ x__ y__ -> x__{_ValidatorUpdate'power = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message ValidatorUpdate where
        messageName _ = Data.Text.pack "types.ValidatorUpdate"
        fieldsByTag
          = let pubKey__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "pub_key"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor PubKey)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'pubKey"))
                      :: Data.ProtoLens.FieldDescriptor ValidatorUpdate
                power__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "power"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"power"))
                      :: Data.ProtoLens.FieldDescriptor ValidatorUpdate
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, pubKey__field_descriptor),
                 (Data.ProtoLens.Tag 2, power__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _ValidatorUpdate'_unknownFields
              (\ x__ y__ -> x__{_ValidatorUpdate'_unknownFields = y__})
        defMessage
          = ValidatorUpdate{_ValidatorUpdate'pubKey = Prelude.Nothing,
                            _ValidatorUpdate'power = Data.ProtoLens.fieldDefault,
                            _ValidatorUpdate'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     ValidatorUpdate ->
                       Data.ProtoLens.Encoding.Bytes.Parser ValidatorUpdate
                loop x
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 x)
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                10 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?> "pub_key"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"pubKey")
                                              y
                                              x)
                                16 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                 Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                Data.ProtoLens.Encoding.Bytes.<?> "power"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"power") y
                                              x)
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "ValidatorUpdate"
        buildMessage
          = (\ _x ->
               (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pubKey") _x
                  of
                    (Prelude.Nothing) -> Data.Monoid.mempty
                    Prelude.Just _v -> (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                                         Data.Monoid.<>
                                         (((\ bs ->
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                                Data.Monoid.<>
                                                Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                            Prelude.. Data.ProtoLens.encodeMessage)
                                           _v)
                 Data.Monoid.<>
                 (let _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"power") _x
                    in
                    if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                      Data.Monoid.mempty else
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 16) Data.Monoid.<>
                        ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                           Prelude.fromIntegral)
                          _v)
                   Data.Monoid.<>
                   Data.ProtoLens.Encoding.Wire.buildFieldSet
                     (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ValidatorUpdate where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_ValidatorUpdate'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_ValidatorUpdate'pubKey x__)
                    (Control.DeepSeq.deepseq (_ValidatorUpdate'power x__) (()))))
{- | Fields :

    * 'Proto.Types_Fields.block' @:: Lens' Version Data.Word.Word64@
    * 'Proto.Types_Fields.app' @:: Lens' Version Data.Word.Word64@
 -}
data Version = Version{_Version'block :: !Data.Word.Word64,
                       _Version'app :: !Data.Word.Word64,
                       _Version'_unknownFields :: !Data.ProtoLens.FieldSet}
                 deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Version where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Version "block"
           (Data.Word.Word64)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Version'block
               (\ x__ y__ -> x__{_Version'block = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField Version "app"
           (Data.Word.Word64)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Version'app
               (\ x__ y__ -> x__{_Version'app = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message Version where
        messageName _ = Data.Text.pack "types.Version"
        fieldsByTag
          = let block__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "Block"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"block"))
                      :: Data.ProtoLens.FieldDescriptor Version
                app__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "App"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"app"))
                      :: Data.ProtoLens.FieldDescriptor Version
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, block__field_descriptor),
                 (Data.ProtoLens.Tag 2, app__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _Version'_unknownFields
              (\ x__ y__ -> x__{_Version'_unknownFields = y__})
        defMessage
          = Version{_Version'block = Data.ProtoLens.fieldDefault,
                    _Version'app = Data.ProtoLens.fieldDefault,
                    _Version'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     Version -> Data.ProtoLens.Encoding.Bytes.Parser Version
                loop x
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 x)
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                8 -> do y <- (Data.ProtoLens.Encoding.Bytes.getVarInt)
                                               Data.ProtoLens.Encoding.Bytes.<?> "Block"
                                        loop
                                          (Lens.Family2.set (Data.ProtoLens.Field.field @"block") y
                                             x)
                                16 -> do y <- (Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                Data.ProtoLens.Encoding.Bytes.<?> "App"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"app") y
                                              x)
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "Version"
        buildMessage
          = (\ _x ->
               (let _v
                      = Lens.Family2.view (Data.ProtoLens.Field.field @"block") _x
                  in
                  if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty else
                    (Data.ProtoLens.Encoding.Bytes.putVarInt 8) Data.Monoid.<>
                      Data.ProtoLens.Encoding.Bytes.putVarInt _v)
                 Data.Monoid.<>
                 (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"app") _x
                    in
                    if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                      Data.Monoid.mempty else
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 16) Data.Monoid.<>
                        Data.ProtoLens.Encoding.Bytes.putVarInt _v)
                   Data.Monoid.<>
                   Data.ProtoLens.Encoding.Wire.buildFieldSet
                     (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Version where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_Version'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_Version'block x__)
                    (Control.DeepSeq.deepseq (_Version'app x__) (()))))
{- | Fields :

    * 'Proto.Types_Fields.validator' @:: Lens' VoteInfo Validator@
    * 'Proto.Types_Fields.maybe'validator' @:: Lens' VoteInfo (Prelude.Maybe Validator)@
    * 'Proto.Types_Fields.signedLastBlock' @:: Lens' VoteInfo Prelude.Bool@
 -}
data VoteInfo = VoteInfo{_VoteInfo'validator ::
                         !(Prelude.Maybe Validator),
                         _VoteInfo'signedLastBlock :: !Prelude.Bool,
                         _VoteInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
                  deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show VoteInfo where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField VoteInfo "validator"
           (Validator)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _VoteInfo'validator
               (\ x__ y__ -> x__{_VoteInfo'validator = y__}))
              Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Field.HasField VoteInfo "maybe'validator"
           (Prelude.Maybe Validator)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _VoteInfo'validator
               (\ x__ y__ -> x__{_VoteInfo'validator = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField VoteInfo "signedLastBlock"
           (Prelude.Bool)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _VoteInfo'signedLastBlock
               (\ x__ y__ -> x__{_VoteInfo'signedLastBlock = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message VoteInfo where
        messageName _ = Data.Text.pack "types.VoteInfo"
        fieldsByTag
          = let validator__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "validator"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor Validator)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'validator"))
                      :: Data.ProtoLens.FieldDescriptor VoteInfo
                signedLastBlock__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "signed_last_block"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"signedLastBlock"))
                      :: Data.ProtoLens.FieldDescriptor VoteInfo
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, validator__field_descriptor),
                 (Data.ProtoLens.Tag 2, signedLastBlock__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _VoteInfo'_unknownFields
              (\ x__ y__ -> x__{_VoteInfo'_unknownFields = y__})
        defMessage
          = VoteInfo{_VoteInfo'validator = Prelude.Nothing,
                     _VoteInfo'signedLastBlock = Data.ProtoLens.fieldDefault,
                     _VoteInfo'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     VoteInfo -> Data.ProtoLens.Encoding.Bytes.Parser VoteInfo
                loop x
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 x)
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                10 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?> "validator"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"validator")
                                              y
                                              x)
                                16 -> do y <- (Prelude.fmap ((Prelude./=) 0)
                                                 Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                Data.ProtoLens.Encoding.Bytes.<?>
                                                "signed_last_block"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"signedLastBlock")
                                              y
                                              x)
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "VoteInfo"
        buildMessage
          = (\ _x ->
               (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'validator")
                    _x
                  of
                    (Prelude.Nothing) -> Data.Monoid.mempty
                    Prelude.Just _v -> (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                                         Data.Monoid.<>
                                         (((\ bs ->
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                                Data.Monoid.<>
                                                Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                            Prelude.. Data.ProtoLens.encodeMessage)
                                           _v)
                 Data.Monoid.<>
                 (let _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"signedLastBlock")
                            _x
                    in
                    if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                      Data.Monoid.mempty else
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 16) Data.Monoid.<>
                        ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                           (\ b -> if b then 1 else 0))
                          _v)
                   Data.Monoid.<>
                   Data.ProtoLens.Encoding.Wire.buildFieldSet
                     (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData VoteInfo where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_VoteInfo'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_VoteInfo'validator x__)
                    (Control.DeepSeq.deepseq (_VoteInfo'signedLastBlock x__) (()))))
data ABCIApplication = ABCIApplication{}
                         deriving ()
instance Data.ProtoLens.Service.Types.Service ABCIApplication where
        type ServiceName ABCIApplication = "ABCIApplication"
        type ServicePackage ABCIApplication = "types"
        type ServiceMethods ABCIApplication =
             '["beginBlock", "checkTx", "commit", "deliverTx", "echo",
               "endBlock", "flush", "info", "initChain", "query", "setOption"]
instance Data.ProtoLens.Service.Types.HasMethodImpl ABCIApplication
           "echo"
         where
        type MethodName ABCIApplication "echo" = "Echo"
        type MethodInput ABCIApplication "echo" = RequestEcho
        type MethodOutput ABCIApplication "echo" = ResponseEcho
        type MethodStreamingType ABCIApplication "echo" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl ABCIApplication
           "flush"
         where
        type MethodName ABCIApplication "flush" = "Flush"
        type MethodInput ABCIApplication "flush" = RequestFlush
        type MethodOutput ABCIApplication "flush" = ResponseFlush
        type MethodStreamingType ABCIApplication "flush" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl ABCIApplication
           "info"
         where
        type MethodName ABCIApplication "info" = "Info"
        type MethodInput ABCIApplication "info" = RequestInfo
        type MethodOutput ABCIApplication "info" = ResponseInfo
        type MethodStreamingType ABCIApplication "info" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl ABCIApplication
           "setOption"
         where
        type MethodName ABCIApplication "setOption" = "SetOption"
        type MethodInput ABCIApplication "setOption" = RequestSetOption
        type MethodOutput ABCIApplication "setOption" = ResponseSetOption
        type MethodStreamingType ABCIApplication "setOption" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl ABCIApplication
           "deliverTx"
         where
        type MethodName ABCIApplication "deliverTx" = "DeliverTx"
        type MethodInput ABCIApplication "deliverTx" = RequestDeliverTx
        type MethodOutput ABCIApplication "deliverTx" = ResponseDeliverTx
        type MethodStreamingType ABCIApplication "deliverTx" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl ABCIApplication
           "checkTx"
         where
        type MethodName ABCIApplication "checkTx" = "CheckTx"
        type MethodInput ABCIApplication "checkTx" = RequestCheckTx
        type MethodOutput ABCIApplication "checkTx" = ResponseCheckTx
        type MethodStreamingType ABCIApplication "checkTx" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl ABCIApplication
           "query"
         where
        type MethodName ABCIApplication "query" = "Query"
        type MethodInput ABCIApplication "query" = RequestQuery
        type MethodOutput ABCIApplication "query" = ResponseQuery
        type MethodStreamingType ABCIApplication "query" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl ABCIApplication
           "commit"
         where
        type MethodName ABCIApplication "commit" = "Commit"
        type MethodInput ABCIApplication "commit" = RequestCommit
        type MethodOutput ABCIApplication "commit" = ResponseCommit
        type MethodStreamingType ABCIApplication "commit" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl ABCIApplication
           "initChain"
         where
        type MethodName ABCIApplication "initChain" = "InitChain"
        type MethodInput ABCIApplication "initChain" = RequestInitChain
        type MethodOutput ABCIApplication "initChain" = ResponseInitChain
        type MethodStreamingType ABCIApplication "initChain" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl ABCIApplication
           "beginBlock"
         where
        type MethodName ABCIApplication "beginBlock" = "BeginBlock"
        type MethodInput ABCIApplication "beginBlock" = RequestBeginBlock
        type MethodOutput ABCIApplication "beginBlock" = ResponseBeginBlock
        type MethodStreamingType ABCIApplication "beginBlock" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl ABCIApplication
           "endBlock"
         where
        type MethodName ABCIApplication "endBlock" = "EndBlock"
        type MethodInput ABCIApplication "endBlock" = RequestEndBlock
        type MethodOutput ABCIApplication "endBlock" = ResponseEndBlock
        type MethodStreamingType ABCIApplication "endBlock" =
             'Data.ProtoLens.Service.Types.NonStreaming