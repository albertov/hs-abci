{- This file was auto-generated from tendermint/tendermint/crypto/merkle/merkle.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies,
  UndecidableInstances, GeneralizedNewtypeDeriving,
  MultiParamTypeClasses, FlexibleContexts, FlexibleInstances,
  PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds,
  BangPatterns, TypeApplications #-}
{-# OPTIONS_GHC -fno-warn-unused-imports#-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports#-}
module Proto.Vendored.Tendermint.Tendermint.Crypto.Merkle.Merkle
       (Proof(), ProofOp()) where
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

{- | Fields :

    * 'Proto.Tendermint.Tendermint.Crypto.Merkle.Merkle_Fields.ops' @:: Lens' Proof [ProofOp]@
    * 'Proto.Tendermint.Tendermint.Crypto.Merkle.Merkle_Fields.vec'ops' @:: Lens' Proof (Data.Vector.Vector ProofOp)@
 -}
data Proof = Proof{_Proof'ops :: !(Data.Vector.Vector ProofOp),
                   _Proof'_unknownFields :: !Data.ProtoLens.FieldSet}
               deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Proof where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Proof "ops" ([ProofOp])
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Proof'ops
               (\ x__ y__ -> x__{_Proof'ops = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens Data.Vector.Generic.toList
                (\ _ y__ -> Data.Vector.Generic.fromList y__)
instance Data.ProtoLens.Field.HasField Proof "vec'ops"
           (Data.Vector.Vector ProofOp)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Proof'ops
               (\ x__ y__ -> x__{_Proof'ops = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message Proof where
        messageName _ = Data.Text.pack "merkle.Proof"
        fieldsByTag
          = let ops__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "ops"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ProofOp)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Data.ProtoLens.Field.field @"ops"))
                      :: Data.ProtoLens.FieldDescriptor Proof
              in
              Data.Map.fromList [(Data.ProtoLens.Tag 1, ops__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _Proof'_unknownFields
              (\ x__ y__ -> x__{_Proof'_unknownFields = y__})
        defMessage
          = Proof{_Proof'ops = Data.Vector.Generic.empty,
                  _Proof'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     Proof ->
                       Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector
                         Data.ProtoLens.Encoding.Growing.RealWorld
                         ProofOp
                         -> Data.ProtoLens.Encoding.Bytes.Parser Proof
                loop x mutable'ops
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do frozen'ops <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'ops)
                            let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 (Lens.Family2.set (Data.ProtoLens.Field.field @"vec'ops")
                                    frozen'ops
                                    x))
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                10 -> do !y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                   Data.ProtoLens.Encoding.Bytes.isolate
                                                     (Prelude.fromIntegral len)
                                                     Data.ProtoLens.parseMessage)
                                                 Data.ProtoLens.Encoding.Bytes.<?> "ops"
                                         v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.append mutable'ops
                                                   y)
                                         loop x v
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
                                             mutable'ops
              in
              (do mutable'ops <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
                  loop Data.ProtoLens.defMessage mutable'ops)
                Data.ProtoLens.Encoding.Bytes.<?> "Proof"
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
                  (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'ops") _x))
                 Data.Monoid.<>
                 Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Proof where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_Proof'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_Proof'ops x__) (())))
{- | Fields :

    * 'Proto.Tendermint.Tendermint.Crypto.Merkle.Merkle_Fields.type'' @:: Lens' ProofOp Data.Text.Text@
    * 'Proto.Tendermint.Tendermint.Crypto.Merkle.Merkle_Fields.key' @:: Lens' ProofOp Data.ByteString.ByteString@
    * 'Proto.Tendermint.Tendermint.Crypto.Merkle.Merkle_Fields.data'' @:: Lens' ProofOp Data.ByteString.ByteString@
 -}
data ProofOp = ProofOp{_ProofOp'type' :: !Data.Text.Text,
                       _ProofOp'key :: !Data.ByteString.ByteString,
                       _ProofOp'data' :: !Data.ByteString.ByteString,
                       _ProofOp'_unknownFields :: !Data.ProtoLens.FieldSet}
                 deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ProofOp where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ProofOp "type'"
           (Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ProofOp'type'
               (\ x__ y__ -> x__{_ProofOp'type' = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField ProofOp "key"
           (Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ProofOp'key
               (\ x__ y__ -> x__{_ProofOp'key = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField ProofOp "data'"
           (Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ProofOp'data'
               (\ x__ y__ -> x__{_ProofOp'data' = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message ProofOp where
        messageName _ = Data.Text.pack "merkle.ProofOp"
        fieldsByTag
          = let type'__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "type"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"type'"))
                      :: Data.ProtoLens.FieldDescriptor ProofOp
                key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"key"))
                      :: Data.ProtoLens.FieldDescriptor ProofOp
                data'__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "data"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"data'"))
                      :: Data.ProtoLens.FieldDescriptor ProofOp
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, type'__field_descriptor),
                 (Data.ProtoLens.Tag 2, key__field_descriptor),
                 (Data.ProtoLens.Tag 3, data'__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _ProofOp'_unknownFields
              (\ x__ y__ -> x__{_ProofOp'_unknownFields = y__})
        defMessage
          = ProofOp{_ProofOp'type' = Data.ProtoLens.fieldDefault,
                    _ProofOp'key = Data.ProtoLens.fieldDefault,
                    _ProofOp'data' = Data.ProtoLens.fieldDefault,
                    _ProofOp'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     ProofOp -> Data.ProtoLens.Encoding.Bytes.Parser ProofOp
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
                                                Data.ProtoLens.Encoding.Bytes.<?> "key"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y
                                              x)
                                26 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
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
                Data.ProtoLens.Encoding.Bytes.<?> "ProofOp"
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
                 (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
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
                   (let _v
                          = Lens.Family2.view (Data.ProtoLens.Field.field @"data'") _x
                      in
                      if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                        Data.Monoid.mempty else
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 26) Data.Monoid.<>
                          (\ bs ->
                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                (Prelude.fromIntegral (Data.ByteString.length bs)))
                               Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs)
                            _v)
                     Data.Monoid.<>
                     Data.ProtoLens.Encoding.Wire.buildFieldSet
                       (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ProofOp where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_ProofOp'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_ProofOp'type' x__)
                    (Control.DeepSeq.deepseq (_ProofOp'key x__)
                       (Control.DeepSeq.deepseq (_ProofOp'data' x__) (())))))
