{- This file was auto-generated from src/Network/ABCI/types.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies,
  UndecidableInstances, MultiParamTypeClasses, FlexibleContexts,
  FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude
  #-}
{-# OPTIONS_GHC -fno-warn-unused-imports#-}
module Proto.Network.ABCI.Types where
import qualified Data.ProtoLens.Reexport.Prelude as Prelude
import qualified Data.ProtoLens.Reexport.Data.Int as Data.Int
import qualified Data.ProtoLens.Reexport.Data.Word as Data.Word
import qualified Data.ProtoLens.Reexport.Data.ProtoLens
       as Data.ProtoLens
import qualified
       Data.ProtoLens.Reexport.Data.ProtoLens.Message.Enum
       as Data.ProtoLens.Message.Enum
import qualified Data.ProtoLens.Reexport.Lens.Family2
       as Lens.Family2
import qualified Data.ProtoLens.Reexport.Lens.Family2.Unchecked
       as Lens.Family2.Unchecked
import qualified Data.ProtoLens.Reexport.Data.Default.Class
       as Data.Default.Class
import qualified Data.ProtoLens.Reexport.Data.Text as Data.Text
import qualified Data.ProtoLens.Reexport.Data.Map as Data.Map
import qualified Data.ProtoLens.Reexport.Data.ByteString
       as Data.ByteString
import qualified Data.ProtoLens.Reexport.Lens.Labels as Lens.Labels

data BlockGossip = BlockGossip{_BlockGossip'blockPartSizeBytes ::
                               !Data.Int.Int32}
                 deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)

instance (a ~ Data.Int.Int32, b ~ Data.Int.Int32,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "blockPartSizeBytes" f BlockGossip BlockGossip
           a
           b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _BlockGossip'blockPartSizeBytes
                 (\ x__ y__ -> x__{_BlockGossip'blockPartSizeBytes = y__}))
              Prelude.id

instance Data.Default.Class.Default BlockGossip where
        def
          = BlockGossip{_BlockGossip'blockPartSizeBytes =
                          Data.ProtoLens.fieldDefault}

instance Data.ProtoLens.Message BlockGossip where
        descriptor
          = let blockPartSizeBytes__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "block_part_size_bytes"
                      (Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         blockPartSizeBytes)
                      :: Data.ProtoLens.FieldDescriptor BlockGossip
              in
              Data.ProtoLens.MessageDescriptor
                (Data.Text.pack "types.BlockGossip")
                (Data.Map.fromList
                   [(Data.ProtoLens.Tag 1, blockPartSizeBytes__field_descriptor)])
                (Data.Map.fromList
                   [("block_part_size_bytes", blockPartSizeBytes__field_descriptor)])

data BlockID = BlockID{_BlockID'hash ::
                       !Data.ByteString.ByteString,
                       _BlockID'parts :: !(Prelude.Maybe PartSetHeader)}
             deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)

instance (a ~ Data.ByteString.ByteString,
          b ~ Data.ByteString.ByteString, Prelude.Functor f) =>
         Lens.Labels.HasLens "hash" f BlockID BlockID a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _BlockID'hash
                 (\ x__ y__ -> x__{_BlockID'hash = y__}))
              Prelude.id

instance (a ~ PartSetHeader, b ~ PartSetHeader,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "parts" f BlockID BlockID a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _BlockID'parts
                 (\ x__ y__ -> x__{_BlockID'parts = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)

instance (a ~ Prelude.Maybe PartSetHeader,
          b ~ Prelude.Maybe PartSetHeader, Prelude.Functor f) =>
         Lens.Labels.HasLens "maybe'parts" f BlockID BlockID a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _BlockID'parts
                 (\ x__ y__ -> x__{_BlockID'parts = y__}))
              Prelude.id

instance Data.Default.Class.Default BlockID where
        def
          = BlockID{_BlockID'hash = Data.ProtoLens.fieldDefault,
                    _BlockID'parts = Prelude.Nothing}

instance Data.ProtoLens.Message BlockID where
        descriptor
          = let hash__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "hash"
                      (Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional hash)
                      :: Data.ProtoLens.FieldDescriptor BlockID
                parts__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "parts"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor PartSetHeader)
                      (Data.ProtoLens.OptionalField maybe'parts)
                      :: Data.ProtoLens.FieldDescriptor BlockID
              in
              Data.ProtoLens.MessageDescriptor (Data.Text.pack "types.BlockID")
                (Data.Map.fromList
                   [(Data.ProtoLens.Tag 1, hash__field_descriptor),
                    (Data.ProtoLens.Tag 2, parts__field_descriptor)])
                (Data.Map.fromList
                   [("hash", hash__field_descriptor),
                    ("parts", parts__field_descriptor)])

data BlockSize = BlockSize{_BlockSize'maxBytes :: !Data.Int.Int32,
                           _BlockSize'maxTxs :: !Data.Int.Int32,
                           _BlockSize'maxGas :: !Data.Int.Int64}
               deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)

instance (a ~ Data.Int.Int32, b ~ Data.Int.Int32,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "maxBytes" f BlockSize BlockSize a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _BlockSize'maxBytes
                 (\ x__ y__ -> x__{_BlockSize'maxBytes = y__}))
              Prelude.id

instance (a ~ Data.Int.Int32, b ~ Data.Int.Int32,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "maxTxs" f BlockSize BlockSize a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _BlockSize'maxTxs
                 (\ x__ y__ -> x__{_BlockSize'maxTxs = y__}))
              Prelude.id

instance (a ~ Data.Int.Int64, b ~ Data.Int.Int64,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "maxGas" f BlockSize BlockSize a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _BlockSize'maxGas
                 (\ x__ y__ -> x__{_BlockSize'maxGas = y__}))
              Prelude.id

instance Data.Default.Class.Default BlockSize where
        def
          = BlockSize{_BlockSize'maxBytes = Data.ProtoLens.fieldDefault,
                      _BlockSize'maxTxs = Data.ProtoLens.fieldDefault,
                      _BlockSize'maxGas = Data.ProtoLens.fieldDefault}

instance Data.ProtoLens.Message BlockSize where
        descriptor
          = let maxBytes__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "max_bytes"
                      (Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional maxBytes)
                      :: Data.ProtoLens.FieldDescriptor BlockSize
                maxTxs__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "max_txs"
                      (Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional maxTxs)
                      :: Data.ProtoLens.FieldDescriptor BlockSize
                maxGas__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "max_gas"
                      (Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional maxGas)
                      :: Data.ProtoLens.FieldDescriptor BlockSize
              in
              Data.ProtoLens.MessageDescriptor (Data.Text.pack "types.BlockSize")
                (Data.Map.fromList
                   [(Data.ProtoLens.Tag 1, maxBytes__field_descriptor),
                    (Data.ProtoLens.Tag 2, maxTxs__field_descriptor),
                    (Data.ProtoLens.Tag 3, maxGas__field_descriptor)])
                (Data.Map.fromList
                   [("max_bytes", maxBytes__field_descriptor),
                    ("max_txs", maxTxs__field_descriptor),
                    ("max_gas", maxGas__field_descriptor)])

data ConsensusParams = ConsensusParams{_ConsensusParams'blockSize
                                       :: !(Prelude.Maybe BlockSize),
                                       _ConsensusParams'txSize :: !(Prelude.Maybe TxSize),
                                       _ConsensusParams'blockGossip :: !(Prelude.Maybe BlockGossip)}
                     deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)

instance (a ~ BlockSize, b ~ BlockSize, Prelude.Functor f) =>
         Lens.Labels.HasLens "blockSize" f ConsensusParams ConsensusParams a
           b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ConsensusParams'blockSize
                 (\ x__ y__ -> x__{_ConsensusParams'blockSize = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)

instance (a ~ Prelude.Maybe BlockSize, b ~ Prelude.Maybe BlockSize,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "maybe'blockSize" f ConsensusParams
           ConsensusParams
           a
           b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ConsensusParams'blockSize
                 (\ x__ y__ -> x__{_ConsensusParams'blockSize = y__}))
              Prelude.id

instance (a ~ TxSize, b ~ TxSize, Prelude.Functor f) =>
         Lens.Labels.HasLens "txSize" f ConsensusParams ConsensusParams a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ConsensusParams'txSize
                 (\ x__ y__ -> x__{_ConsensusParams'txSize = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)

instance (a ~ Prelude.Maybe TxSize, b ~ Prelude.Maybe TxSize,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "maybe'txSize" f ConsensusParams
           ConsensusParams
           a
           b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ConsensusParams'txSize
                 (\ x__ y__ -> x__{_ConsensusParams'txSize = y__}))
              Prelude.id

instance (a ~ BlockGossip, b ~ BlockGossip, Prelude.Functor f) =>
         Lens.Labels.HasLens "blockGossip" f ConsensusParams ConsensusParams
           a
           b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ConsensusParams'blockGossip
                 (\ x__ y__ -> x__{_ConsensusParams'blockGossip = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)

instance (a ~ Prelude.Maybe BlockGossip,
          b ~ Prelude.Maybe BlockGossip, Prelude.Functor f) =>
         Lens.Labels.HasLens "maybe'blockGossip" f ConsensusParams
           ConsensusParams
           a
           b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ConsensusParams'blockGossip
                 (\ x__ y__ -> x__{_ConsensusParams'blockGossip = y__}))
              Prelude.id

instance Data.Default.Class.Default ConsensusParams where
        def
          = ConsensusParams{_ConsensusParams'blockSize = Prelude.Nothing,
                            _ConsensusParams'txSize = Prelude.Nothing,
                            _ConsensusParams'blockGossip = Prelude.Nothing}

instance Data.ProtoLens.Message ConsensusParams where
        descriptor
          = let blockSize__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "block_size"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor BlockSize)
                      (Data.ProtoLens.OptionalField maybe'blockSize)
                      :: Data.ProtoLens.FieldDescriptor ConsensusParams
                txSize__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "tx_size"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor TxSize)
                      (Data.ProtoLens.OptionalField maybe'txSize)
                      :: Data.ProtoLens.FieldDescriptor ConsensusParams
                blockGossip__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "block_gossip"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor BlockGossip)
                      (Data.ProtoLens.OptionalField maybe'blockGossip)
                      :: Data.ProtoLens.FieldDescriptor ConsensusParams
              in
              Data.ProtoLens.MessageDescriptor
                (Data.Text.pack "types.ConsensusParams")
                (Data.Map.fromList
                   [(Data.ProtoLens.Tag 1, blockSize__field_descriptor),
                    (Data.ProtoLens.Tag 2, txSize__field_descriptor),
                    (Data.ProtoLens.Tag 3, blockGossip__field_descriptor)])
                (Data.Map.fromList
                   [("block_size", blockSize__field_descriptor),
                    ("tx_size", txSize__field_descriptor),
                    ("block_gossip", blockGossip__field_descriptor)])

data Evidence = Evidence{_Evidence'pubKey ::
                         !Data.ByteString.ByteString,
                         _Evidence'height :: !Data.Int.Int64}
              deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)

instance (a ~ Data.ByteString.ByteString,
          b ~ Data.ByteString.ByteString, Prelude.Functor f) =>
         Lens.Labels.HasLens "pubKey" f Evidence Evidence a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Evidence'pubKey
                 (\ x__ y__ -> x__{_Evidence'pubKey = y__}))
              Prelude.id

instance (a ~ Data.Int.Int64, b ~ Data.Int.Int64,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "height" f Evidence Evidence a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Evidence'height
                 (\ x__ y__ -> x__{_Evidence'height = y__}))
              Prelude.id

instance Data.Default.Class.Default Evidence where
        def
          = Evidence{_Evidence'pubKey = Data.ProtoLens.fieldDefault,
                     _Evidence'height = Data.ProtoLens.fieldDefault}

instance Data.ProtoLens.Message Evidence where
        descriptor
          = let pubKey__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "pub_key"
                      (Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional pubKey)
                      :: Data.ProtoLens.FieldDescriptor Evidence
                height__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "height"
                      (Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional height)
                      :: Data.ProtoLens.FieldDescriptor Evidence
              in
              Data.ProtoLens.MessageDescriptor (Data.Text.pack "types.Evidence")
                (Data.Map.fromList
                   [(Data.ProtoLens.Tag 1, pubKey__field_descriptor),
                    (Data.ProtoLens.Tag 2, height__field_descriptor)])
                (Data.Map.fromList
                   [("pub_key", pubKey__field_descriptor),
                    ("height", height__field_descriptor)])

data Header = Header{_Header'chainId :: !Data.Text.Text,
                     _Header'height :: !Data.Int.Int64, _Header'time :: !Data.Int.Int64,
                     _Header'numTxs :: !Data.Int.Int32,
                     _Header'lastBlockId :: !(Prelude.Maybe BlockID),
                     _Header'lastCommitHash :: !Data.ByteString.ByteString,
                     _Header'dataHash :: !Data.ByteString.ByteString,
                     _Header'validatorsHash :: !Data.ByteString.ByteString,
                     _Header'appHash :: !Data.ByteString.ByteString}
            deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)

instance (a ~ Data.Text.Text, b ~ Data.Text.Text,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "chainId" f Header Header a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Header'chainId
                 (\ x__ y__ -> x__{_Header'chainId = y__}))
              Prelude.id

instance (a ~ Data.Int.Int64, b ~ Data.Int.Int64,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "height" f Header Header a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Header'height
                 (\ x__ y__ -> x__{_Header'height = y__}))
              Prelude.id

instance (a ~ Data.Int.Int64, b ~ Data.Int.Int64,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "time" f Header Header a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Header'time
                 (\ x__ y__ -> x__{_Header'time = y__}))
              Prelude.id

instance (a ~ Data.Int.Int32, b ~ Data.Int.Int32,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "numTxs" f Header Header a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Header'numTxs
                 (\ x__ y__ -> x__{_Header'numTxs = y__}))
              Prelude.id

instance (a ~ BlockID, b ~ BlockID, Prelude.Functor f) =>
         Lens.Labels.HasLens "lastBlockId" f Header Header a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Header'lastBlockId
                 (\ x__ y__ -> x__{_Header'lastBlockId = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)

instance (a ~ Prelude.Maybe BlockID, b ~ Prelude.Maybe BlockID,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "maybe'lastBlockId" f Header Header a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Header'lastBlockId
                 (\ x__ y__ -> x__{_Header'lastBlockId = y__}))
              Prelude.id

instance (a ~ Data.ByteString.ByteString,
          b ~ Data.ByteString.ByteString, Prelude.Functor f) =>
         Lens.Labels.HasLens "lastCommitHash" f Header Header a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Header'lastCommitHash
                 (\ x__ y__ -> x__{_Header'lastCommitHash = y__}))
              Prelude.id

instance (a ~ Data.ByteString.ByteString,
          b ~ Data.ByteString.ByteString, Prelude.Functor f) =>
         Lens.Labels.HasLens "dataHash" f Header Header a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Header'dataHash
                 (\ x__ y__ -> x__{_Header'dataHash = y__}))
              Prelude.id

instance (a ~ Data.ByteString.ByteString,
          b ~ Data.ByteString.ByteString, Prelude.Functor f) =>
         Lens.Labels.HasLens "validatorsHash" f Header Header a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Header'validatorsHash
                 (\ x__ y__ -> x__{_Header'validatorsHash = y__}))
              Prelude.id

instance (a ~ Data.ByteString.ByteString,
          b ~ Data.ByteString.ByteString, Prelude.Functor f) =>
         Lens.Labels.HasLens "appHash" f Header Header a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Header'appHash
                 (\ x__ y__ -> x__{_Header'appHash = y__}))
              Prelude.id

instance Data.Default.Class.Default Header where
        def
          = Header{_Header'chainId = Data.ProtoLens.fieldDefault,
                   _Header'height = Data.ProtoLens.fieldDefault,
                   _Header'time = Data.ProtoLens.fieldDefault,
                   _Header'numTxs = Data.ProtoLens.fieldDefault,
                   _Header'lastBlockId = Prelude.Nothing,
                   _Header'lastCommitHash = Data.ProtoLens.fieldDefault,
                   _Header'dataHash = Data.ProtoLens.fieldDefault,
                   _Header'validatorsHash = Data.ProtoLens.fieldDefault,
                   _Header'appHash = Data.ProtoLens.fieldDefault}

instance Data.ProtoLens.Message Header where
        descriptor
          = let chainId__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "chain_id"
                      (Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional chainId)
                      :: Data.ProtoLens.FieldDescriptor Header
                height__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "height"
                      (Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional height)
                      :: Data.ProtoLens.FieldDescriptor Header
                time__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "time"
                      (Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional time)
                      :: Data.ProtoLens.FieldDescriptor Header
                numTxs__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "num_txs"
                      (Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional numTxs)
                      :: Data.ProtoLens.FieldDescriptor Header
                lastBlockId__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "last_block_id"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor BlockID)
                      (Data.ProtoLens.OptionalField maybe'lastBlockId)
                      :: Data.ProtoLens.FieldDescriptor Header
                lastCommitHash__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "last_commit_hash"
                      (Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional lastCommitHash)
                      :: Data.ProtoLens.FieldDescriptor Header
                dataHash__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "data_hash"
                      (Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional dataHash)
                      :: Data.ProtoLens.FieldDescriptor Header
                validatorsHash__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "validators_hash"
                      (Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional validatorsHash)
                      :: Data.ProtoLens.FieldDescriptor Header
                appHash__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "app_hash"
                      (Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional appHash)
                      :: Data.ProtoLens.FieldDescriptor Header
              in
              Data.ProtoLens.MessageDescriptor (Data.Text.pack "types.Header")
                (Data.Map.fromList
                   [(Data.ProtoLens.Tag 1, chainId__field_descriptor),
                    (Data.ProtoLens.Tag 2, height__field_descriptor),
                    (Data.ProtoLens.Tag 3, time__field_descriptor),
                    (Data.ProtoLens.Tag 4, numTxs__field_descriptor),
                    (Data.ProtoLens.Tag 5, lastBlockId__field_descriptor),
                    (Data.ProtoLens.Tag 6, lastCommitHash__field_descriptor),
                    (Data.ProtoLens.Tag 7, dataHash__field_descriptor),
                    (Data.ProtoLens.Tag 8, validatorsHash__field_descriptor),
                    (Data.ProtoLens.Tag 9, appHash__field_descriptor)])
                (Data.Map.fromList
                   [("chain_id", chainId__field_descriptor),
                    ("height", height__field_descriptor),
                    ("time", time__field_descriptor),
                    ("num_txs", numTxs__field_descriptor),
                    ("last_block_id", lastBlockId__field_descriptor),
                    ("last_commit_hash", lastCommitHash__field_descriptor),
                    ("data_hash", dataHash__field_descriptor),
                    ("validators_hash", validatorsHash__field_descriptor),
                    ("app_hash", appHash__field_descriptor)])

data KVPair = KVPair{_KVPair'key :: !Data.Text.Text,
                     _KVPair'valueType :: !KVPair'Type,
                     _KVPair'valueString :: !Data.Text.Text,
                     _KVPair'valueInt :: !Data.Int.Int64}
            deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)

instance (a ~ Data.Text.Text, b ~ Data.Text.Text,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "key" f KVPair KVPair a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _KVPair'key
                 (\ x__ y__ -> x__{_KVPair'key = y__}))
              Prelude.id

instance (a ~ KVPair'Type, b ~ KVPair'Type, Prelude.Functor f) =>
         Lens.Labels.HasLens "valueType" f KVPair KVPair a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _KVPair'valueType
                 (\ x__ y__ -> x__{_KVPair'valueType = y__}))
              Prelude.id

instance (a ~ Data.Text.Text, b ~ Data.Text.Text,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "valueString" f KVPair KVPair a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _KVPair'valueString
                 (\ x__ y__ -> x__{_KVPair'valueString = y__}))
              Prelude.id

instance (a ~ Data.Int.Int64, b ~ Data.Int.Int64,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "valueInt" f KVPair KVPair a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _KVPair'valueInt
                 (\ x__ y__ -> x__{_KVPair'valueInt = y__}))
              Prelude.id

instance Data.Default.Class.Default KVPair where
        def
          = KVPair{_KVPair'key = Data.ProtoLens.fieldDefault,
                   _KVPair'valueType = Data.Default.Class.def,
                   _KVPair'valueString = Data.ProtoLens.fieldDefault,
                   _KVPair'valueInt = Data.ProtoLens.fieldDefault}

instance Data.ProtoLens.Message KVPair where
        descriptor
          = let key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional key)
                      :: Data.ProtoLens.FieldDescriptor KVPair
                valueType__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value_type"
                      (Data.ProtoLens.EnumField ::
                         Data.ProtoLens.FieldTypeDescriptor KVPair'Type)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional valueType)
                      :: Data.ProtoLens.FieldDescriptor KVPair
                valueString__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value_string"
                      (Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional valueString)
                      :: Data.ProtoLens.FieldDescriptor KVPair
                valueInt__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value_int"
                      (Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional valueInt)
                      :: Data.ProtoLens.FieldDescriptor KVPair
              in
              Data.ProtoLens.MessageDescriptor (Data.Text.pack "types.KVPair")
                (Data.Map.fromList
                   [(Data.ProtoLens.Tag 1, key__field_descriptor),
                    (Data.ProtoLens.Tag 2, valueType__field_descriptor),
                    (Data.ProtoLens.Tag 3, valueString__field_descriptor),
                    (Data.ProtoLens.Tag 4, valueInt__field_descriptor)])
                (Data.Map.fromList
                   [("key", key__field_descriptor),
                    ("value_type", valueType__field_descriptor),
                    ("value_string", valueString__field_descriptor),
                    ("value_int", valueInt__field_descriptor)])

data KVPair'Type = KVPair'STRING
                 | KVPair'INT
                 deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)

instance Data.Default.Class.Default KVPair'Type where
        def = KVPair'STRING

instance Data.ProtoLens.FieldDefault KVPair'Type where
        fieldDefault = KVPair'STRING

instance Data.ProtoLens.MessageEnum KVPair'Type where
        maybeToEnum 0 = Prelude.Just KVPair'STRING
        maybeToEnum 1 = Prelude.Just KVPair'INT
        maybeToEnum _ = Prelude.Nothing
        showEnum KVPair'STRING = "STRING"
        showEnum KVPair'INT = "INT"
        readEnum "STRING" = Prelude.Just KVPair'STRING
        readEnum "INT" = Prelude.Just KVPair'INT
        readEnum _ = Prelude.Nothing

instance Prelude.Enum KVPair'Type where
        toEnum k__
          = Prelude.maybe
              (Prelude.error
                 ((Prelude.++) "toEnum: unknown value for enum Type: "
                    (Prelude.show k__)))
              Prelude.id
              (Data.ProtoLens.maybeToEnum k__)
        fromEnum KVPair'STRING = 0
        fromEnum KVPair'INT = 1
        succ KVPair'INT
          = Prelude.error
              "KVPair'Type.succ: bad argument KVPair'INT. This value would be out of bounds."
        succ KVPair'STRING = KVPair'INT
        pred KVPair'STRING
          = Prelude.error
              "KVPair'Type.pred: bad argument KVPair'STRING. This value would be out of bounds."
        pred KVPair'INT = KVPair'STRING
        enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
        enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
        enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
        enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo

instance Prelude.Bounded KVPair'Type where
        minBound = KVPair'STRING
        maxBound = KVPair'INT

data PartSetHeader = PartSetHeader{_PartSetHeader'total ::
                                   !Data.Int.Int32,
                                   _PartSetHeader'hash :: !Data.ByteString.ByteString}
                   deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)

instance (a ~ Data.Int.Int32, b ~ Data.Int.Int32,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "total" f PartSetHeader PartSetHeader a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _PartSetHeader'total
                 (\ x__ y__ -> x__{_PartSetHeader'total = y__}))
              Prelude.id

instance (a ~ Data.ByteString.ByteString,
          b ~ Data.ByteString.ByteString, Prelude.Functor f) =>
         Lens.Labels.HasLens "hash" f PartSetHeader PartSetHeader a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _PartSetHeader'hash
                 (\ x__ y__ -> x__{_PartSetHeader'hash = y__}))
              Prelude.id

instance Data.Default.Class.Default PartSetHeader where
        def
          = PartSetHeader{_PartSetHeader'total = Data.ProtoLens.fieldDefault,
                          _PartSetHeader'hash = Data.ProtoLens.fieldDefault}

instance Data.ProtoLens.Message PartSetHeader where
        descriptor
          = let total__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "total"
                      (Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional total)
                      :: Data.ProtoLens.FieldDescriptor PartSetHeader
                hash__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "hash"
                      (Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional hash)
                      :: Data.ProtoLens.FieldDescriptor PartSetHeader
              in
              Data.ProtoLens.MessageDescriptor
                (Data.Text.pack "types.PartSetHeader")
                (Data.Map.fromList
                   [(Data.ProtoLens.Tag 1, total__field_descriptor),
                    (Data.ProtoLens.Tag 2, hash__field_descriptor)])
                (Data.Map.fromList
                   [("total", total__field_descriptor),
                    ("hash", hash__field_descriptor)])

data Request = Request{_Request'value ::
                       !(Prelude.Maybe Request'Value)}
             deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)

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

instance (a ~ Prelude.Maybe Request'Value,
          b ~ Prelude.Maybe Request'Value, Prelude.Functor f) =>
         Lens.Labels.HasLens "maybe'value" f Request Request a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Request'value
                 (\ x__ y__ -> x__{_Request'value = y__}))
              Prelude.id

instance (a ~ Prelude.Maybe RequestEcho,
          b ~ Prelude.Maybe RequestEcho, Prelude.Functor f) =>
         Lens.Labels.HasLens "maybe'echo" f Request Request a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Request'value
                 (\ x__ y__ -> x__{_Request'value = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Request'Echo x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Request'Echo y__))

instance (a ~ RequestEcho, b ~ RequestEcho, Prelude.Functor f) =>
         Lens.Labels.HasLens "echo" f Request Request a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Request'value
                 (\ x__ y__ -> x__{_Request'value = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (Request'Echo x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap Request'Echo y__))
                 (Data.ProtoLens.maybeLens Data.Default.Class.def))

instance (a ~ Prelude.Maybe RequestFlush,
          b ~ Prelude.Maybe RequestFlush, Prelude.Functor f) =>
         Lens.Labels.HasLens "maybe'flush" f Request Request a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Request'value
                 (\ x__ y__ -> x__{_Request'value = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Request'Flush x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Request'Flush y__))

instance (a ~ RequestFlush, b ~ RequestFlush, Prelude.Functor f) =>
         Lens.Labels.HasLens "flush" f Request Request a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Request'value
                 (\ x__ y__ -> x__{_Request'value = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (Request'Flush x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap Request'Flush y__))
                 (Data.ProtoLens.maybeLens Data.Default.Class.def))

instance (a ~ Prelude.Maybe RequestInfo,
          b ~ Prelude.Maybe RequestInfo, Prelude.Functor f) =>
         Lens.Labels.HasLens "maybe'info" f Request Request a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Request'value
                 (\ x__ y__ -> x__{_Request'value = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Request'Info x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Request'Info y__))

instance (a ~ RequestInfo, b ~ RequestInfo, Prelude.Functor f) =>
         Lens.Labels.HasLens "info" f Request Request a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Request'value
                 (\ x__ y__ -> x__{_Request'value = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (Request'Info x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap Request'Info y__))
                 (Data.ProtoLens.maybeLens Data.Default.Class.def))

instance (a ~ Prelude.Maybe RequestSetOption,
          b ~ Prelude.Maybe RequestSetOption, Prelude.Functor f) =>
         Lens.Labels.HasLens "maybe'setOption" f Request Request a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Request'value
                 (\ x__ y__ -> x__{_Request'value = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Request'SetOption x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Request'SetOption y__))

instance (a ~ RequestSetOption, b ~ RequestSetOption,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "setOption" f Request Request a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Request'value
                 (\ x__ y__ -> x__{_Request'value = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (Request'SetOption x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap Request'SetOption y__))
                 (Data.ProtoLens.maybeLens Data.Default.Class.def))

instance (a ~ Prelude.Maybe RequestInitChain,
          b ~ Prelude.Maybe RequestInitChain, Prelude.Functor f) =>
         Lens.Labels.HasLens "maybe'initChain" f Request Request a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Request'value
                 (\ x__ y__ -> x__{_Request'value = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Request'InitChain x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Request'InitChain y__))

instance (a ~ RequestInitChain, b ~ RequestInitChain,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "initChain" f Request Request a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Request'value
                 (\ x__ y__ -> x__{_Request'value = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (Request'InitChain x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap Request'InitChain y__))
                 (Data.ProtoLens.maybeLens Data.Default.Class.def))

instance (a ~ Prelude.Maybe RequestQuery,
          b ~ Prelude.Maybe RequestQuery, Prelude.Functor f) =>
         Lens.Labels.HasLens "maybe'query" f Request Request a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Request'value
                 (\ x__ y__ -> x__{_Request'value = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Request'Query x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Request'Query y__))

instance (a ~ RequestQuery, b ~ RequestQuery, Prelude.Functor f) =>
         Lens.Labels.HasLens "query" f Request Request a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Request'value
                 (\ x__ y__ -> x__{_Request'value = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (Request'Query x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap Request'Query y__))
                 (Data.ProtoLens.maybeLens Data.Default.Class.def))

instance (a ~ Prelude.Maybe RequestBeginBlock,
          b ~ Prelude.Maybe RequestBeginBlock, Prelude.Functor f) =>
         Lens.Labels.HasLens "maybe'beginBlock" f Request Request a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Request'value
                 (\ x__ y__ -> x__{_Request'value = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Request'BeginBlock x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Request'BeginBlock y__))

instance (a ~ RequestBeginBlock, b ~ RequestBeginBlock,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "beginBlock" f Request Request a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Request'value
                 (\ x__ y__ -> x__{_Request'value = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (Request'BeginBlock x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap Request'BeginBlock y__))
                 (Data.ProtoLens.maybeLens Data.Default.Class.def))

instance (a ~ Prelude.Maybe RequestCheckTx,
          b ~ Prelude.Maybe RequestCheckTx, Prelude.Functor f) =>
         Lens.Labels.HasLens "maybe'checkTx" f Request Request a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Request'value
                 (\ x__ y__ -> x__{_Request'value = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Request'CheckTx x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Request'CheckTx y__))

instance (a ~ RequestCheckTx, b ~ RequestCheckTx,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "checkTx" f Request Request a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Request'value
                 (\ x__ y__ -> x__{_Request'value = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (Request'CheckTx x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap Request'CheckTx y__))
                 (Data.ProtoLens.maybeLens Data.Default.Class.def))

instance (a ~ Prelude.Maybe RequestDeliverTx,
          b ~ Prelude.Maybe RequestDeliverTx, Prelude.Functor f) =>
         Lens.Labels.HasLens "maybe'deliverTx" f Request Request a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Request'value
                 (\ x__ y__ -> x__{_Request'value = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Request'DeliverTx x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Request'DeliverTx y__))

instance (a ~ RequestDeliverTx, b ~ RequestDeliverTx,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "deliverTx" f Request Request a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Request'value
                 (\ x__ y__ -> x__{_Request'value = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (Request'DeliverTx x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap Request'DeliverTx y__))
                 (Data.ProtoLens.maybeLens Data.Default.Class.def))

instance (a ~ Prelude.Maybe RequestEndBlock,
          b ~ Prelude.Maybe RequestEndBlock, Prelude.Functor f) =>
         Lens.Labels.HasLens "maybe'endBlock" f Request Request a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Request'value
                 (\ x__ y__ -> x__{_Request'value = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Request'EndBlock x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Request'EndBlock y__))

instance (a ~ RequestEndBlock, b ~ RequestEndBlock,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "endBlock" f Request Request a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Request'value
                 (\ x__ y__ -> x__{_Request'value = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (Request'EndBlock x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap Request'EndBlock y__))
                 (Data.ProtoLens.maybeLens Data.Default.Class.def))

instance (a ~ Prelude.Maybe RequestCommit,
          b ~ Prelude.Maybe RequestCommit, Prelude.Functor f) =>
         Lens.Labels.HasLens "maybe'commit" f Request Request a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Request'value
                 (\ x__ y__ -> x__{_Request'value = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Request'Commit x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Request'Commit y__))

instance (a ~ RequestCommit, b ~ RequestCommit,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "commit" f Request Request a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Request'value
                 (\ x__ y__ -> x__{_Request'value = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (Request'Commit x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap Request'Commit y__))
                 (Data.ProtoLens.maybeLens Data.Default.Class.def))

instance Data.Default.Class.Default Request where
        def = Request{_Request'value = Prelude.Nothing}

instance Data.ProtoLens.Message Request where
        descriptor
          = let echo__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "echo"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor RequestEcho)
                      (Data.ProtoLens.OptionalField maybe'echo)
                      :: Data.ProtoLens.FieldDescriptor Request
                flush__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "flush"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor RequestFlush)
                      (Data.ProtoLens.OptionalField maybe'flush)
                      :: Data.ProtoLens.FieldDescriptor Request
                info__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "info"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor RequestInfo)
                      (Data.ProtoLens.OptionalField maybe'info)
                      :: Data.ProtoLens.FieldDescriptor Request
                setOption__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "set_option"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor RequestSetOption)
                      (Data.ProtoLens.OptionalField maybe'setOption)
                      :: Data.ProtoLens.FieldDescriptor Request
                initChain__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "init_chain"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor RequestInitChain)
                      (Data.ProtoLens.OptionalField maybe'initChain)
                      :: Data.ProtoLens.FieldDescriptor Request
                query__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "query"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor RequestQuery)
                      (Data.ProtoLens.OptionalField maybe'query)
                      :: Data.ProtoLens.FieldDescriptor Request
                beginBlock__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "begin_block"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor RequestBeginBlock)
                      (Data.ProtoLens.OptionalField maybe'beginBlock)
                      :: Data.ProtoLens.FieldDescriptor Request
                checkTx__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "check_tx"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor RequestCheckTx)
                      (Data.ProtoLens.OptionalField maybe'checkTx)
                      :: Data.ProtoLens.FieldDescriptor Request
                deliverTx__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "deliver_tx"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor RequestDeliverTx)
                      (Data.ProtoLens.OptionalField maybe'deliverTx)
                      :: Data.ProtoLens.FieldDescriptor Request
                endBlock__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "end_block"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor RequestEndBlock)
                      (Data.ProtoLens.OptionalField maybe'endBlock)
                      :: Data.ProtoLens.FieldDescriptor Request
                commit__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "commit"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor RequestCommit)
                      (Data.ProtoLens.OptionalField maybe'commit)
                      :: Data.ProtoLens.FieldDescriptor Request
              in
              Data.ProtoLens.MessageDescriptor (Data.Text.pack "types.Request")
                (Data.Map.fromList
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
                    (Data.ProtoLens.Tag 12, commit__field_descriptor)])
                (Data.Map.fromList
                   [("echo", echo__field_descriptor),
                    ("flush", flush__field_descriptor),
                    ("info", info__field_descriptor),
                    ("set_option", setOption__field_descriptor),
                    ("init_chain", initChain__field_descriptor),
                    ("query", query__field_descriptor),
                    ("begin_block", beginBlock__field_descriptor),
                    ("check_tx", checkTx__field_descriptor),
                    ("deliver_tx", deliverTx__field_descriptor),
                    ("end_block", endBlock__field_descriptor),
                    ("commit", commit__field_descriptor)])

data RequestBeginBlock = RequestBeginBlock{_RequestBeginBlock'hash
                                           :: !Data.ByteString.ByteString,
                                           _RequestBeginBlock'header :: !(Prelude.Maybe Header),
                                           _RequestBeginBlock'absentValidators :: ![Data.Int.Int32],
                                           _RequestBeginBlock'byzantineValidators :: ![Evidence]}
                       deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)

instance (a ~ Data.ByteString.ByteString,
          b ~ Data.ByteString.ByteString, Prelude.Functor f) =>
         Lens.Labels.HasLens "hash" f RequestBeginBlock RequestBeginBlock a
           b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RequestBeginBlock'hash
                 (\ x__ y__ -> x__{_RequestBeginBlock'hash = y__}))
              Prelude.id

instance (a ~ Header, b ~ Header, Prelude.Functor f) =>
         Lens.Labels.HasLens "header" f RequestBeginBlock RequestBeginBlock
           a
           b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RequestBeginBlock'header
                 (\ x__ y__ -> x__{_RequestBeginBlock'header = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)

instance (a ~ Prelude.Maybe Header, b ~ Prelude.Maybe Header,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "maybe'header" f RequestBeginBlock
           RequestBeginBlock
           a
           b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RequestBeginBlock'header
                 (\ x__ y__ -> x__{_RequestBeginBlock'header = y__}))
              Prelude.id

instance (a ~ [Data.Int.Int32], b ~ [Data.Int.Int32],
          Prelude.Functor f) =>
         Lens.Labels.HasLens "absentValidators" f RequestBeginBlock
           RequestBeginBlock
           a
           b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RequestBeginBlock'absentValidators
                 (\ x__ y__ -> x__{_RequestBeginBlock'absentValidators = y__}))
              Prelude.id

instance (a ~ [Evidence], b ~ [Evidence], Prelude.Functor f) =>
         Lens.Labels.HasLens "byzantineValidators" f RequestBeginBlock
           RequestBeginBlock
           a
           b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RequestBeginBlock'byzantineValidators
                 (\ x__ y__ -> x__{_RequestBeginBlock'byzantineValidators = y__}))
              Prelude.id

instance Data.Default.Class.Default RequestBeginBlock where
        def
          = RequestBeginBlock{_RequestBeginBlock'hash =
                                Data.ProtoLens.fieldDefault,
                              _RequestBeginBlock'header = Prelude.Nothing,
                              _RequestBeginBlock'absentValidators = [],
                              _RequestBeginBlock'byzantineValidators = []}

instance Data.ProtoLens.Message RequestBeginBlock where
        descriptor
          = let hash__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "hash"
                      (Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional hash)
                      :: Data.ProtoLens.FieldDescriptor RequestBeginBlock
                header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor Header)
                      (Data.ProtoLens.OptionalField maybe'header)
                      :: Data.ProtoLens.FieldDescriptor RequestBeginBlock
                absentValidators__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "absent_validators"
                      (Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Packed
                         absentValidators)
                      :: Data.ProtoLens.FieldDescriptor RequestBeginBlock
                byzantineValidators__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "byzantine_validators"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor Evidence)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         byzantineValidators)
                      :: Data.ProtoLens.FieldDescriptor RequestBeginBlock
              in
              Data.ProtoLens.MessageDescriptor
                (Data.Text.pack "types.RequestBeginBlock")
                (Data.Map.fromList
                   [(Data.ProtoLens.Tag 1, hash__field_descriptor),
                    (Data.ProtoLens.Tag 2, header__field_descriptor),
                    (Data.ProtoLens.Tag 3, absentValidators__field_descriptor),
                    (Data.ProtoLens.Tag 4, byzantineValidators__field_descriptor)])
                (Data.Map.fromList
                   [("hash", hash__field_descriptor),
                    ("header", header__field_descriptor),
                    ("absent_validators", absentValidators__field_descriptor),
                    ("byzantine_validators", byzantineValidators__field_descriptor)])

data RequestCheckTx = RequestCheckTx{_RequestCheckTx'tx ::
                                     !Data.ByteString.ByteString}
                    deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)

instance (a ~ Data.ByteString.ByteString,
          b ~ Data.ByteString.ByteString, Prelude.Functor f) =>
         Lens.Labels.HasLens "tx" f RequestCheckTx RequestCheckTx a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RequestCheckTx'tx
                 (\ x__ y__ -> x__{_RequestCheckTx'tx = y__}))
              Prelude.id

instance Data.Default.Class.Default RequestCheckTx where
        def
          = RequestCheckTx{_RequestCheckTx'tx = Data.ProtoLens.fieldDefault}

instance Data.ProtoLens.Message RequestCheckTx where
        descriptor
          = let tx__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "tx"
                      (Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional tx)
                      :: Data.ProtoLens.FieldDescriptor RequestCheckTx
              in
              Data.ProtoLens.MessageDescriptor
                (Data.Text.pack "types.RequestCheckTx")
                (Data.Map.fromList [(Data.ProtoLens.Tag 1, tx__field_descriptor)])
                (Data.Map.fromList [("tx", tx__field_descriptor)])

data RequestCommit = RequestCommit{}
                   deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)

instance Data.Default.Class.Default RequestCommit where
        def = RequestCommit{}

instance Data.ProtoLens.Message RequestCommit where
        descriptor
          = let in
              Data.ProtoLens.MessageDescriptor
                (Data.Text.pack "types.RequestCommit")
                (Data.Map.fromList [])
                (Data.Map.fromList [])

data RequestDeliverTx = RequestDeliverTx{_RequestDeliverTx'tx ::
                                         !Data.ByteString.ByteString}
                      deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)

instance (a ~ Data.ByteString.ByteString,
          b ~ Data.ByteString.ByteString, Prelude.Functor f) =>
         Lens.Labels.HasLens "tx" f RequestDeliverTx RequestDeliverTx a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RequestDeliverTx'tx
                 (\ x__ y__ -> x__{_RequestDeliverTx'tx = y__}))
              Prelude.id

instance Data.Default.Class.Default RequestDeliverTx where
        def
          = RequestDeliverTx{_RequestDeliverTx'tx =
                               Data.ProtoLens.fieldDefault}

instance Data.ProtoLens.Message RequestDeliverTx where
        descriptor
          = let tx__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "tx"
                      (Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional tx)
                      :: Data.ProtoLens.FieldDescriptor RequestDeliverTx
              in
              Data.ProtoLens.MessageDescriptor
                (Data.Text.pack "types.RequestDeliverTx")
                (Data.Map.fromList [(Data.ProtoLens.Tag 1, tx__field_descriptor)])
                (Data.Map.fromList [("tx", tx__field_descriptor)])

data RequestEcho = RequestEcho{_RequestEcho'message ::
                               !Data.Text.Text}
                 deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)

instance (a ~ Data.Text.Text, b ~ Data.Text.Text,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "message" f RequestEcho RequestEcho a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RequestEcho'message
                 (\ x__ y__ -> x__{_RequestEcho'message = y__}))
              Prelude.id

instance Data.Default.Class.Default RequestEcho where
        def
          = RequestEcho{_RequestEcho'message = Data.ProtoLens.fieldDefault}

instance Data.ProtoLens.Message RequestEcho where
        descriptor
          = let message__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "message"
                      (Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional message)
                      :: Data.ProtoLens.FieldDescriptor RequestEcho
              in
              Data.ProtoLens.MessageDescriptor
                (Data.Text.pack "types.RequestEcho")
                (Data.Map.fromList
                   [(Data.ProtoLens.Tag 1, message__field_descriptor)])
                (Data.Map.fromList [("message", message__field_descriptor)])

data RequestEndBlock = RequestEndBlock{_RequestEndBlock'height ::
                                       !Data.Int.Int64}
                     deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)

instance (a ~ Data.Int.Int64, b ~ Data.Int.Int64,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "height" f RequestEndBlock RequestEndBlock a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RequestEndBlock'height
                 (\ x__ y__ -> x__{_RequestEndBlock'height = y__}))
              Prelude.id

instance Data.Default.Class.Default RequestEndBlock where
        def
          = RequestEndBlock{_RequestEndBlock'height =
                              Data.ProtoLens.fieldDefault}

instance Data.ProtoLens.Message RequestEndBlock where
        descriptor
          = let height__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "height"
                      (Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional height)
                      :: Data.ProtoLens.FieldDescriptor RequestEndBlock
              in
              Data.ProtoLens.MessageDescriptor
                (Data.Text.pack "types.RequestEndBlock")
                (Data.Map.fromList
                   [(Data.ProtoLens.Tag 1, height__field_descriptor)])
                (Data.Map.fromList [("height", height__field_descriptor)])

data RequestFlush = RequestFlush{}
                  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)

instance Data.Default.Class.Default RequestFlush where
        def = RequestFlush{}

instance Data.ProtoLens.Message RequestFlush where
        descriptor
          = let in
              Data.ProtoLens.MessageDescriptor
                (Data.Text.pack "types.RequestFlush")
                (Data.Map.fromList [])
                (Data.Map.fromList [])

data RequestInfo = RequestInfo{_RequestInfo'version ::
                               !Data.Text.Text}
                 deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)

instance (a ~ Data.Text.Text, b ~ Data.Text.Text,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "version" f RequestInfo RequestInfo a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RequestInfo'version
                 (\ x__ y__ -> x__{_RequestInfo'version = y__}))
              Prelude.id

instance Data.Default.Class.Default RequestInfo where
        def
          = RequestInfo{_RequestInfo'version = Data.ProtoLens.fieldDefault}

instance Data.ProtoLens.Message RequestInfo where
        descriptor
          = let version__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "version"
                      (Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional version)
                      :: Data.ProtoLens.FieldDescriptor RequestInfo
              in
              Data.ProtoLens.MessageDescriptor
                (Data.Text.pack "types.RequestInfo")
                (Data.Map.fromList
                   [(Data.ProtoLens.Tag 1, version__field_descriptor)])
                (Data.Map.fromList [("version", version__field_descriptor)])

data RequestInitChain = RequestInitChain{_RequestInitChain'validators
                                         :: ![Validator]}
                      deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)

instance (a ~ [Validator], b ~ [Validator], Prelude.Functor f) =>
         Lens.Labels.HasLens "validators" f RequestInitChain
           RequestInitChain
           a
           b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RequestInitChain'validators
                 (\ x__ y__ -> x__{_RequestInitChain'validators = y__}))
              Prelude.id

instance Data.Default.Class.Default RequestInitChain where
        def = RequestInitChain{_RequestInitChain'validators = []}

instance Data.ProtoLens.Message RequestInitChain where
        descriptor
          = let validators__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "validators"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor Validator)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked validators)
                      :: Data.ProtoLens.FieldDescriptor RequestInitChain
              in
              Data.ProtoLens.MessageDescriptor
                (Data.Text.pack "types.RequestInitChain")
                (Data.Map.fromList
                   [(Data.ProtoLens.Tag 1, validators__field_descriptor)])
                (Data.Map.fromList [("validators", validators__field_descriptor)])

data RequestQuery = RequestQuery{_RequestQuery'data' ::
                                 !Data.ByteString.ByteString,
                                 _RequestQuery'path :: !Data.Text.Text,
                                 _RequestQuery'height :: !Data.Int.Int64,
                                 _RequestQuery'prove :: !Prelude.Bool}
                  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)

instance (a ~ Data.ByteString.ByteString,
          b ~ Data.ByteString.ByteString, Prelude.Functor f) =>
         Lens.Labels.HasLens "data'" f RequestQuery RequestQuery a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RequestQuery'data'
                 (\ x__ y__ -> x__{_RequestQuery'data' = y__}))
              Prelude.id

instance (a ~ Data.Text.Text, b ~ Data.Text.Text,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "path" f RequestQuery RequestQuery a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RequestQuery'path
                 (\ x__ y__ -> x__{_RequestQuery'path = y__}))
              Prelude.id

instance (a ~ Data.Int.Int64, b ~ Data.Int.Int64,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "height" f RequestQuery RequestQuery a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RequestQuery'height
                 (\ x__ y__ -> x__{_RequestQuery'height = y__}))
              Prelude.id

instance (a ~ Prelude.Bool, b ~ Prelude.Bool, Prelude.Functor f) =>
         Lens.Labels.HasLens "prove" f RequestQuery RequestQuery a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RequestQuery'prove
                 (\ x__ y__ -> x__{_RequestQuery'prove = y__}))
              Prelude.id

instance Data.Default.Class.Default RequestQuery where
        def
          = RequestQuery{_RequestQuery'data' = Data.ProtoLens.fieldDefault,
                         _RequestQuery'path = Data.ProtoLens.fieldDefault,
                         _RequestQuery'height = Data.ProtoLens.fieldDefault,
                         _RequestQuery'prove = Data.ProtoLens.fieldDefault}

instance Data.ProtoLens.Message RequestQuery where
        descriptor
          = let data'__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "data"
                      (Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional data')
                      :: Data.ProtoLens.FieldDescriptor RequestQuery
                path__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "path"
                      (Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional path)
                      :: Data.ProtoLens.FieldDescriptor RequestQuery
                height__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "height"
                      (Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional height)
                      :: Data.ProtoLens.FieldDescriptor RequestQuery
                prove__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "prove"
                      (Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional prove)
                      :: Data.ProtoLens.FieldDescriptor RequestQuery
              in
              Data.ProtoLens.MessageDescriptor
                (Data.Text.pack "types.RequestQuery")
                (Data.Map.fromList
                   [(Data.ProtoLens.Tag 1, data'__field_descriptor),
                    (Data.ProtoLens.Tag 2, path__field_descriptor),
                    (Data.ProtoLens.Tag 3, height__field_descriptor),
                    (Data.ProtoLens.Tag 4, prove__field_descriptor)])
                (Data.Map.fromList
                   [("data", data'__field_descriptor),
                    ("path", path__field_descriptor),
                    ("height", height__field_descriptor),
                    ("prove", prove__field_descriptor)])

data RequestSetOption = RequestSetOption{_RequestSetOption'key ::
                                         !Data.Text.Text,
                                         _RequestSetOption'value :: !Data.Text.Text}
                      deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)

instance (a ~ Data.Text.Text, b ~ Data.Text.Text,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "key" f RequestSetOption RequestSetOption a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RequestSetOption'key
                 (\ x__ y__ -> x__{_RequestSetOption'key = y__}))
              Prelude.id

instance (a ~ Data.Text.Text, b ~ Data.Text.Text,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "value" f RequestSetOption RequestSetOption a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RequestSetOption'value
                 (\ x__ y__ -> x__{_RequestSetOption'value = y__}))
              Prelude.id

instance Data.Default.Class.Default RequestSetOption where
        def
          = RequestSetOption{_RequestSetOption'key =
                               Data.ProtoLens.fieldDefault,
                             _RequestSetOption'value = Data.ProtoLens.fieldDefault}

instance Data.ProtoLens.Message RequestSetOption where
        descriptor
          = let key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional key)
                      :: Data.ProtoLens.FieldDescriptor RequestSetOption
                value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional value)
                      :: Data.ProtoLens.FieldDescriptor RequestSetOption
              in
              Data.ProtoLens.MessageDescriptor
                (Data.Text.pack "types.RequestSetOption")
                (Data.Map.fromList
                   [(Data.ProtoLens.Tag 1, key__field_descriptor),
                    (Data.ProtoLens.Tag 2, value__field_descriptor)])
                (Data.Map.fromList
                   [("key", key__field_descriptor),
                    ("value", value__field_descriptor)])

data Response = Response{_Response'value ::
                         !(Prelude.Maybe Response'Value)}
              deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)

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

instance (a ~ Prelude.Maybe Response'Value,
          b ~ Prelude.Maybe Response'Value, Prelude.Functor f) =>
         Lens.Labels.HasLens "maybe'value" f Response Response a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Response'value
                 (\ x__ y__ -> x__{_Response'value = y__}))
              Prelude.id

instance (a ~ Prelude.Maybe ResponseException,
          b ~ Prelude.Maybe ResponseException, Prelude.Functor f) =>
         Lens.Labels.HasLens "maybe'exception" f Response Response a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Response'value
                 (\ x__ y__ -> x__{_Response'value = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Response'Exception x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Response'Exception y__))

instance (a ~ ResponseException, b ~ ResponseException,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "exception" f Response Response a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Response'value
                 (\ x__ y__ -> x__{_Response'value = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (Response'Exception x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap Response'Exception y__))
                 (Data.ProtoLens.maybeLens Data.Default.Class.def))

instance (a ~ Prelude.Maybe ResponseEcho,
          b ~ Prelude.Maybe ResponseEcho, Prelude.Functor f) =>
         Lens.Labels.HasLens "maybe'echo" f Response Response a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Response'value
                 (\ x__ y__ -> x__{_Response'value = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Response'Echo x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Response'Echo y__))

instance (a ~ ResponseEcho, b ~ ResponseEcho, Prelude.Functor f) =>
         Lens.Labels.HasLens "echo" f Response Response a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Response'value
                 (\ x__ y__ -> x__{_Response'value = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (Response'Echo x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap Response'Echo y__))
                 (Data.ProtoLens.maybeLens Data.Default.Class.def))

instance (a ~ Prelude.Maybe ResponseFlush,
          b ~ Prelude.Maybe ResponseFlush, Prelude.Functor f) =>
         Lens.Labels.HasLens "maybe'flush" f Response Response a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Response'value
                 (\ x__ y__ -> x__{_Response'value = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Response'Flush x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Response'Flush y__))

instance (a ~ ResponseFlush, b ~ ResponseFlush,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "flush" f Response Response a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Response'value
                 (\ x__ y__ -> x__{_Response'value = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (Response'Flush x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap Response'Flush y__))
                 (Data.ProtoLens.maybeLens Data.Default.Class.def))

instance (a ~ Prelude.Maybe ResponseInfo,
          b ~ Prelude.Maybe ResponseInfo, Prelude.Functor f) =>
         Lens.Labels.HasLens "maybe'info" f Response Response a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Response'value
                 (\ x__ y__ -> x__{_Response'value = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Response'Info x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Response'Info y__))

instance (a ~ ResponseInfo, b ~ ResponseInfo, Prelude.Functor f) =>
         Lens.Labels.HasLens "info" f Response Response a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Response'value
                 (\ x__ y__ -> x__{_Response'value = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (Response'Info x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap Response'Info y__))
                 (Data.ProtoLens.maybeLens Data.Default.Class.def))

instance (a ~ Prelude.Maybe ResponseSetOption,
          b ~ Prelude.Maybe ResponseSetOption, Prelude.Functor f) =>
         Lens.Labels.HasLens "maybe'setOption" f Response Response a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Response'value
                 (\ x__ y__ -> x__{_Response'value = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Response'SetOption x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Response'SetOption y__))

instance (a ~ ResponseSetOption, b ~ ResponseSetOption,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "setOption" f Response Response a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Response'value
                 (\ x__ y__ -> x__{_Response'value = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (Response'SetOption x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap Response'SetOption y__))
                 (Data.ProtoLens.maybeLens Data.Default.Class.def))

instance (a ~ Prelude.Maybe ResponseInitChain,
          b ~ Prelude.Maybe ResponseInitChain, Prelude.Functor f) =>
         Lens.Labels.HasLens "maybe'initChain" f Response Response a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Response'value
                 (\ x__ y__ -> x__{_Response'value = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Response'InitChain x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Response'InitChain y__))

instance (a ~ ResponseInitChain, b ~ ResponseInitChain,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "initChain" f Response Response a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Response'value
                 (\ x__ y__ -> x__{_Response'value = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (Response'InitChain x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap Response'InitChain y__))
                 (Data.ProtoLens.maybeLens Data.Default.Class.def))

instance (a ~ Prelude.Maybe ResponseQuery,
          b ~ Prelude.Maybe ResponseQuery, Prelude.Functor f) =>
         Lens.Labels.HasLens "maybe'query" f Response Response a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Response'value
                 (\ x__ y__ -> x__{_Response'value = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Response'Query x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Response'Query y__))

instance (a ~ ResponseQuery, b ~ ResponseQuery,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "query" f Response Response a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Response'value
                 (\ x__ y__ -> x__{_Response'value = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (Response'Query x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap Response'Query y__))
                 (Data.ProtoLens.maybeLens Data.Default.Class.def))

instance (a ~ Prelude.Maybe ResponseBeginBlock,
          b ~ Prelude.Maybe ResponseBeginBlock, Prelude.Functor f) =>
         Lens.Labels.HasLens "maybe'beginBlock" f Response Response a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Response'value
                 (\ x__ y__ -> x__{_Response'value = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Response'BeginBlock x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Response'BeginBlock y__))

instance (a ~ ResponseBeginBlock, b ~ ResponseBeginBlock,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "beginBlock" f Response Response a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Response'value
                 (\ x__ y__ -> x__{_Response'value = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (Response'BeginBlock x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap Response'BeginBlock y__))
                 (Data.ProtoLens.maybeLens Data.Default.Class.def))

instance (a ~ Prelude.Maybe ResponseCheckTx,
          b ~ Prelude.Maybe ResponseCheckTx, Prelude.Functor f) =>
         Lens.Labels.HasLens "maybe'checkTx" f Response Response a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Response'value
                 (\ x__ y__ -> x__{_Response'value = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Response'CheckTx x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Response'CheckTx y__))

instance (a ~ ResponseCheckTx, b ~ ResponseCheckTx,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "checkTx" f Response Response a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Response'value
                 (\ x__ y__ -> x__{_Response'value = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (Response'CheckTx x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap Response'CheckTx y__))
                 (Data.ProtoLens.maybeLens Data.Default.Class.def))

instance (a ~ Prelude.Maybe ResponseDeliverTx,
          b ~ Prelude.Maybe ResponseDeliverTx, Prelude.Functor f) =>
         Lens.Labels.HasLens "maybe'deliverTx" f Response Response a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Response'value
                 (\ x__ y__ -> x__{_Response'value = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Response'DeliverTx x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Response'DeliverTx y__))

instance (a ~ ResponseDeliverTx, b ~ ResponseDeliverTx,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "deliverTx" f Response Response a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Response'value
                 (\ x__ y__ -> x__{_Response'value = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (Response'DeliverTx x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap Response'DeliverTx y__))
                 (Data.ProtoLens.maybeLens Data.Default.Class.def))

instance (a ~ Prelude.Maybe ResponseEndBlock,
          b ~ Prelude.Maybe ResponseEndBlock, Prelude.Functor f) =>
         Lens.Labels.HasLens "maybe'endBlock" f Response Response a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Response'value
                 (\ x__ y__ -> x__{_Response'value = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Response'EndBlock x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Response'EndBlock y__))

instance (a ~ ResponseEndBlock, b ~ ResponseEndBlock,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "endBlock" f Response Response a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Response'value
                 (\ x__ y__ -> x__{_Response'value = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (Response'EndBlock x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap Response'EndBlock y__))
                 (Data.ProtoLens.maybeLens Data.Default.Class.def))

instance (a ~ Prelude.Maybe ResponseCommit,
          b ~ Prelude.Maybe ResponseCommit, Prelude.Functor f) =>
         Lens.Labels.HasLens "maybe'commit" f Response Response a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Response'value
                 (\ x__ y__ -> x__{_Response'value = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Response'Commit x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Response'Commit y__))

instance (a ~ ResponseCommit, b ~ ResponseCommit,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "commit" f Response Response a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Response'value
                 (\ x__ y__ -> x__{_Response'value = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (Response'Commit x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap Response'Commit y__))
                 (Data.ProtoLens.maybeLens Data.Default.Class.def))

instance Data.Default.Class.Default Response where
        def = Response{_Response'value = Prelude.Nothing}

instance Data.ProtoLens.Message Response where
        descriptor
          = let exception__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "exception"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseException)
                      (Data.ProtoLens.OptionalField maybe'exception)
                      :: Data.ProtoLens.FieldDescriptor Response
                echo__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "echo"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseEcho)
                      (Data.ProtoLens.OptionalField maybe'echo)
                      :: Data.ProtoLens.FieldDescriptor Response
                flush__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "flush"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseFlush)
                      (Data.ProtoLens.OptionalField maybe'flush)
                      :: Data.ProtoLens.FieldDescriptor Response
                info__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "info"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseInfo)
                      (Data.ProtoLens.OptionalField maybe'info)
                      :: Data.ProtoLens.FieldDescriptor Response
                setOption__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "set_option"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseSetOption)
                      (Data.ProtoLens.OptionalField maybe'setOption)
                      :: Data.ProtoLens.FieldDescriptor Response
                initChain__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "init_chain"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseInitChain)
                      (Data.ProtoLens.OptionalField maybe'initChain)
                      :: Data.ProtoLens.FieldDescriptor Response
                query__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "query"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseQuery)
                      (Data.ProtoLens.OptionalField maybe'query)
                      :: Data.ProtoLens.FieldDescriptor Response
                beginBlock__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "begin_block"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseBeginBlock)
                      (Data.ProtoLens.OptionalField maybe'beginBlock)
                      :: Data.ProtoLens.FieldDescriptor Response
                checkTx__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "check_tx"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseCheckTx)
                      (Data.ProtoLens.OptionalField maybe'checkTx)
                      :: Data.ProtoLens.FieldDescriptor Response
                deliverTx__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "deliver_tx"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseDeliverTx)
                      (Data.ProtoLens.OptionalField maybe'deliverTx)
                      :: Data.ProtoLens.FieldDescriptor Response
                endBlock__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "end_block"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseEndBlock)
                      (Data.ProtoLens.OptionalField maybe'endBlock)
                      :: Data.ProtoLens.FieldDescriptor Response
                commit__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "commit"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseCommit)
                      (Data.ProtoLens.OptionalField maybe'commit)
                      :: Data.ProtoLens.FieldDescriptor Response
              in
              Data.ProtoLens.MessageDescriptor (Data.Text.pack "types.Response")
                (Data.Map.fromList
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
                    (Data.ProtoLens.Tag 12, commit__field_descriptor)])
                (Data.Map.fromList
                   [("exception", exception__field_descriptor),
                    ("echo", echo__field_descriptor),
                    ("flush", flush__field_descriptor),
                    ("info", info__field_descriptor),
                    ("set_option", setOption__field_descriptor),
                    ("init_chain", initChain__field_descriptor),
                    ("query", query__field_descriptor),
                    ("begin_block", beginBlock__field_descriptor),
                    ("check_tx", checkTx__field_descriptor),
                    ("deliver_tx", deliverTx__field_descriptor),
                    ("end_block", endBlock__field_descriptor),
                    ("commit", commit__field_descriptor)])

data ResponseBeginBlock = ResponseBeginBlock{}
                        deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)

instance Data.Default.Class.Default ResponseBeginBlock where
        def = ResponseBeginBlock{}

instance Data.ProtoLens.Message ResponseBeginBlock where
        descriptor
          = let in
              Data.ProtoLens.MessageDescriptor
                (Data.Text.pack "types.ResponseBeginBlock")
                (Data.Map.fromList [])
                (Data.Map.fromList [])

data ResponseCheckTx = ResponseCheckTx{_ResponseCheckTx'code ::
                                       !Data.Word.Word32,
                                       _ResponseCheckTx'data' :: !Data.ByteString.ByteString,
                                       _ResponseCheckTx'log :: !Data.Text.Text,
                                       _ResponseCheckTx'gas :: !Data.Int.Int64,
                                       _ResponseCheckTx'fee :: !Data.Int.Int64}
                     deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)

instance (a ~ Data.Word.Word32, b ~ Data.Word.Word32,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "code" f ResponseCheckTx ResponseCheckTx a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResponseCheckTx'code
                 (\ x__ y__ -> x__{_ResponseCheckTx'code = y__}))
              Prelude.id

instance (a ~ Data.ByteString.ByteString,
          b ~ Data.ByteString.ByteString, Prelude.Functor f) =>
         Lens.Labels.HasLens "data'" f ResponseCheckTx ResponseCheckTx a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResponseCheckTx'data'
                 (\ x__ y__ -> x__{_ResponseCheckTx'data' = y__}))
              Prelude.id

instance (a ~ Data.Text.Text, b ~ Data.Text.Text,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "log" f ResponseCheckTx ResponseCheckTx a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResponseCheckTx'log
                 (\ x__ y__ -> x__{_ResponseCheckTx'log = y__}))
              Prelude.id

instance (a ~ Data.Int.Int64, b ~ Data.Int.Int64,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "gas" f ResponseCheckTx ResponseCheckTx a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResponseCheckTx'gas
                 (\ x__ y__ -> x__{_ResponseCheckTx'gas = y__}))
              Prelude.id

instance (a ~ Data.Int.Int64, b ~ Data.Int.Int64,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "fee" f ResponseCheckTx ResponseCheckTx a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResponseCheckTx'fee
                 (\ x__ y__ -> x__{_ResponseCheckTx'fee = y__}))
              Prelude.id

instance Data.Default.Class.Default ResponseCheckTx where
        def
          = ResponseCheckTx{_ResponseCheckTx'code =
                              Data.ProtoLens.fieldDefault,
                            _ResponseCheckTx'data' = Data.ProtoLens.fieldDefault,
                            _ResponseCheckTx'log = Data.ProtoLens.fieldDefault,
                            _ResponseCheckTx'gas = Data.ProtoLens.fieldDefault,
                            _ResponseCheckTx'fee = Data.ProtoLens.fieldDefault}

instance Data.ProtoLens.Message ResponseCheckTx where
        descriptor
          = let code__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "code"
                      (Data.ProtoLens.UInt32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional code)
                      :: Data.ProtoLens.FieldDescriptor ResponseCheckTx
                data'__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "data"
                      (Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional data')
                      :: Data.ProtoLens.FieldDescriptor ResponseCheckTx
                log__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "log"
                      (Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional log)
                      :: Data.ProtoLens.FieldDescriptor ResponseCheckTx
                gas__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "gas"
                      (Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional gas)
                      :: Data.ProtoLens.FieldDescriptor ResponseCheckTx
                fee__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "fee"
                      (Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional fee)
                      :: Data.ProtoLens.FieldDescriptor ResponseCheckTx
              in
              Data.ProtoLens.MessageDescriptor
                (Data.Text.pack "types.ResponseCheckTx")
                (Data.Map.fromList
                   [(Data.ProtoLens.Tag 1, code__field_descriptor),
                    (Data.ProtoLens.Tag 2, data'__field_descriptor),
                    (Data.ProtoLens.Tag 3, log__field_descriptor),
                    (Data.ProtoLens.Tag 4, gas__field_descriptor),
                    (Data.ProtoLens.Tag 5, fee__field_descriptor)])
                (Data.Map.fromList
                   [("code", code__field_descriptor),
                    ("data", data'__field_descriptor), ("log", log__field_descriptor),
                    ("gas", gas__field_descriptor), ("fee", fee__field_descriptor)])

data ResponseCommit = ResponseCommit{_ResponseCommit'code ::
                                     !Data.Word.Word32,
                                     _ResponseCommit'data' :: !Data.ByteString.ByteString,
                                     _ResponseCommit'log :: !Data.Text.Text}
                    deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)

instance (a ~ Data.Word.Word32, b ~ Data.Word.Word32,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "code" f ResponseCommit ResponseCommit a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResponseCommit'code
                 (\ x__ y__ -> x__{_ResponseCommit'code = y__}))
              Prelude.id

instance (a ~ Data.ByteString.ByteString,
          b ~ Data.ByteString.ByteString, Prelude.Functor f) =>
         Lens.Labels.HasLens "data'" f ResponseCommit ResponseCommit a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResponseCommit'data'
                 (\ x__ y__ -> x__{_ResponseCommit'data' = y__}))
              Prelude.id

instance (a ~ Data.Text.Text, b ~ Data.Text.Text,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "log" f ResponseCommit ResponseCommit a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResponseCommit'log
                 (\ x__ y__ -> x__{_ResponseCommit'log = y__}))
              Prelude.id

instance Data.Default.Class.Default ResponseCommit where
        def
          = ResponseCommit{_ResponseCommit'code =
                             Data.ProtoLens.fieldDefault,
                           _ResponseCommit'data' = Data.ProtoLens.fieldDefault,
                           _ResponseCommit'log = Data.ProtoLens.fieldDefault}

instance Data.ProtoLens.Message ResponseCommit where
        descriptor
          = let code__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "code"
                      (Data.ProtoLens.UInt32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional code)
                      :: Data.ProtoLens.FieldDescriptor ResponseCommit
                data'__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "data"
                      (Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional data')
                      :: Data.ProtoLens.FieldDescriptor ResponseCommit
                log__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "log"
                      (Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional log)
                      :: Data.ProtoLens.FieldDescriptor ResponseCommit
              in
              Data.ProtoLens.MessageDescriptor
                (Data.Text.pack "types.ResponseCommit")
                (Data.Map.fromList
                   [(Data.ProtoLens.Tag 1, code__field_descriptor),
                    (Data.ProtoLens.Tag 2, data'__field_descriptor),
                    (Data.ProtoLens.Tag 3, log__field_descriptor)])
                (Data.Map.fromList
                   [("code", code__field_descriptor),
                    ("data", data'__field_descriptor), ("log", log__field_descriptor)])

data ResponseDeliverTx = ResponseDeliverTx{_ResponseDeliverTx'code
                                           :: !Data.Word.Word32,
                                           _ResponseDeliverTx'data' :: !Data.ByteString.ByteString,
                                           _ResponseDeliverTx'log :: !Data.Text.Text,
                                           _ResponseDeliverTx'tags :: ![KVPair]}
                       deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)

instance (a ~ Data.Word.Word32, b ~ Data.Word.Word32,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "code" f ResponseDeliverTx ResponseDeliverTx a
           b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResponseDeliverTx'code
                 (\ x__ y__ -> x__{_ResponseDeliverTx'code = y__}))
              Prelude.id

instance (a ~ Data.ByteString.ByteString,
          b ~ Data.ByteString.ByteString, Prelude.Functor f) =>
         Lens.Labels.HasLens "data'" f ResponseDeliverTx ResponseDeliverTx a
           b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResponseDeliverTx'data'
                 (\ x__ y__ -> x__{_ResponseDeliverTx'data' = y__}))
              Prelude.id

instance (a ~ Data.Text.Text, b ~ Data.Text.Text,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "log" f ResponseDeliverTx ResponseDeliverTx a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResponseDeliverTx'log
                 (\ x__ y__ -> x__{_ResponseDeliverTx'log = y__}))
              Prelude.id

instance (a ~ [KVPair], b ~ [KVPair], Prelude.Functor f) =>
         Lens.Labels.HasLens "tags" f ResponseDeliverTx ResponseDeliverTx a
           b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResponseDeliverTx'tags
                 (\ x__ y__ -> x__{_ResponseDeliverTx'tags = y__}))
              Prelude.id

instance Data.Default.Class.Default ResponseDeliverTx where
        def
          = ResponseDeliverTx{_ResponseDeliverTx'code =
                                Data.ProtoLens.fieldDefault,
                              _ResponseDeliverTx'data' = Data.ProtoLens.fieldDefault,
                              _ResponseDeliverTx'log = Data.ProtoLens.fieldDefault,
                              _ResponseDeliverTx'tags = []}

instance Data.ProtoLens.Message ResponseDeliverTx where
        descriptor
          = let code__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "code"
                      (Data.ProtoLens.UInt32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional code)
                      :: Data.ProtoLens.FieldDescriptor ResponseDeliverTx
                data'__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "data"
                      (Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional data')
                      :: Data.ProtoLens.FieldDescriptor ResponseDeliverTx
                log__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "log"
                      (Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional log)
                      :: Data.ProtoLens.FieldDescriptor ResponseDeliverTx
                tags__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "tags"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor KVPair)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked tags)
                      :: Data.ProtoLens.FieldDescriptor ResponseDeliverTx
              in
              Data.ProtoLens.MessageDescriptor
                (Data.Text.pack "types.ResponseDeliverTx")
                (Data.Map.fromList
                   [(Data.ProtoLens.Tag 1, code__field_descriptor),
                    (Data.ProtoLens.Tag 2, data'__field_descriptor),
                    (Data.ProtoLens.Tag 3, log__field_descriptor),
                    (Data.ProtoLens.Tag 4, tags__field_descriptor)])
                (Data.Map.fromList
                   [("code", code__field_descriptor),
                    ("data", data'__field_descriptor), ("log", log__field_descriptor),
                    ("tags", tags__field_descriptor)])

data ResponseEcho = ResponseEcho{_ResponseEcho'message ::
                                 !Data.Text.Text}
                  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)

instance (a ~ Data.Text.Text, b ~ Data.Text.Text,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "message" f ResponseEcho ResponseEcho a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResponseEcho'message
                 (\ x__ y__ -> x__{_ResponseEcho'message = y__}))
              Prelude.id

instance Data.Default.Class.Default ResponseEcho where
        def
          = ResponseEcho{_ResponseEcho'message = Data.ProtoLens.fieldDefault}

instance Data.ProtoLens.Message ResponseEcho where
        descriptor
          = let message__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "message"
                      (Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional message)
                      :: Data.ProtoLens.FieldDescriptor ResponseEcho
              in
              Data.ProtoLens.MessageDescriptor
                (Data.Text.pack "types.ResponseEcho")
                (Data.Map.fromList
                   [(Data.ProtoLens.Tag 1, message__field_descriptor)])
                (Data.Map.fromList [("message", message__field_descriptor)])

data ResponseEndBlock = ResponseEndBlock{_ResponseEndBlock'validatorUpdates
                                         :: ![Validator],
                                         _ResponseEndBlock'consensusParamUpdates ::
                                         !(Prelude.Maybe ConsensusParams)}
                      deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)

instance (a ~ [Validator], b ~ [Validator], Prelude.Functor f) =>
         Lens.Labels.HasLens "validatorUpdates" f ResponseEndBlock
           ResponseEndBlock
           a
           b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResponseEndBlock'validatorUpdates
                 (\ x__ y__ -> x__{_ResponseEndBlock'validatorUpdates = y__}))
              Prelude.id

instance (a ~ ConsensusParams, b ~ ConsensusParams,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "consensusParamUpdates" f ResponseEndBlock
           ResponseEndBlock
           a
           b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens
                 _ResponseEndBlock'consensusParamUpdates
                 (\ x__ y__ -> x__{_ResponseEndBlock'consensusParamUpdates = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)

instance (a ~ Prelude.Maybe ConsensusParams,
          b ~ Prelude.Maybe ConsensusParams, Prelude.Functor f) =>
         Lens.Labels.HasLens "maybe'consensusParamUpdates" f
           ResponseEndBlock
           ResponseEndBlock
           a
           b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens
                 _ResponseEndBlock'consensusParamUpdates
                 (\ x__ y__ -> x__{_ResponseEndBlock'consensusParamUpdates = y__}))
              Prelude.id

instance Data.Default.Class.Default ResponseEndBlock where
        def
          = ResponseEndBlock{_ResponseEndBlock'validatorUpdates = [],
                             _ResponseEndBlock'consensusParamUpdates = Prelude.Nothing}

instance Data.ProtoLens.Message ResponseEndBlock where
        descriptor
          = let validatorUpdates__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "validator_updates"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor Validator)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         validatorUpdates)
                      :: Data.ProtoLens.FieldDescriptor ResponseEndBlock
                consensusParamUpdates__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "consensus_param_updates"
                      (Data.ProtoLens.MessageField ::
                         Data.ProtoLens.FieldTypeDescriptor ConsensusParams)
                      (Data.ProtoLens.OptionalField maybe'consensusParamUpdates)
                      :: Data.ProtoLens.FieldDescriptor ResponseEndBlock
              in
              Data.ProtoLens.MessageDescriptor
                (Data.Text.pack "types.ResponseEndBlock")
                (Data.Map.fromList
                   [(Data.ProtoLens.Tag 1, validatorUpdates__field_descriptor),
                    (Data.ProtoLens.Tag 2, consensusParamUpdates__field_descriptor)])
                (Data.Map.fromList
                   [("validator_updates", validatorUpdates__field_descriptor),
                    ("consensus_param_updates",
                     consensusParamUpdates__field_descriptor)])

data ResponseException = ResponseException{_ResponseException'error
                                           :: !Data.Text.Text}
                       deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)

instance (a ~ Data.Text.Text, b ~ Data.Text.Text,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "error" f ResponseException ResponseException a
           b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResponseException'error
                 (\ x__ y__ -> x__{_ResponseException'error = y__}))
              Prelude.id

instance Data.Default.Class.Default ResponseException where
        def
          = ResponseException{_ResponseException'error =
                                Data.ProtoLens.fieldDefault}

instance Data.ProtoLens.Message ResponseException where
        descriptor
          = let error__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "error"
                      (Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional error)
                      :: Data.ProtoLens.FieldDescriptor ResponseException
              in
              Data.ProtoLens.MessageDescriptor
                (Data.Text.pack "types.ResponseException")
                (Data.Map.fromList
                   [(Data.ProtoLens.Tag 1, error__field_descriptor)])
                (Data.Map.fromList [("error", error__field_descriptor)])

data ResponseFlush = ResponseFlush{}
                   deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)

instance Data.Default.Class.Default ResponseFlush where
        def = ResponseFlush{}

instance Data.ProtoLens.Message ResponseFlush where
        descriptor
          = let in
              Data.ProtoLens.MessageDescriptor
                (Data.Text.pack "types.ResponseFlush")
                (Data.Map.fromList [])
                (Data.Map.fromList [])

data ResponseInfo = ResponseInfo{_ResponseInfo'data' ::
                                 !Data.Text.Text,
                                 _ResponseInfo'version :: !Data.Text.Text,
                                 _ResponseInfo'lastBlockHeight :: !Data.Int.Int64,
                                 _ResponseInfo'lastBlockAppHash :: !Data.ByteString.ByteString}
                  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)

instance (a ~ Data.Text.Text, b ~ Data.Text.Text,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "data'" f ResponseInfo ResponseInfo a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResponseInfo'data'
                 (\ x__ y__ -> x__{_ResponseInfo'data' = y__}))
              Prelude.id

instance (a ~ Data.Text.Text, b ~ Data.Text.Text,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "version" f ResponseInfo ResponseInfo a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResponseInfo'version
                 (\ x__ y__ -> x__{_ResponseInfo'version = y__}))
              Prelude.id

instance (a ~ Data.Int.Int64, b ~ Data.Int.Int64,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "lastBlockHeight" f ResponseInfo ResponseInfo a
           b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResponseInfo'lastBlockHeight
                 (\ x__ y__ -> x__{_ResponseInfo'lastBlockHeight = y__}))
              Prelude.id

instance (a ~ Data.ByteString.ByteString,
          b ~ Data.ByteString.ByteString, Prelude.Functor f) =>
         Lens.Labels.HasLens "lastBlockAppHash" f ResponseInfo ResponseInfo
           a
           b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResponseInfo'lastBlockAppHash
                 (\ x__ y__ -> x__{_ResponseInfo'lastBlockAppHash = y__}))
              Prelude.id

instance Data.Default.Class.Default ResponseInfo where
        def
          = ResponseInfo{_ResponseInfo'data' = Data.ProtoLens.fieldDefault,
                         _ResponseInfo'version = Data.ProtoLens.fieldDefault,
                         _ResponseInfo'lastBlockHeight = Data.ProtoLens.fieldDefault,
                         _ResponseInfo'lastBlockAppHash = Data.ProtoLens.fieldDefault}

instance Data.ProtoLens.Message ResponseInfo where
        descriptor
          = let data'__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "data"
                      (Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional data')
                      :: Data.ProtoLens.FieldDescriptor ResponseInfo
                version__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "version"
                      (Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional version)
                      :: Data.ProtoLens.FieldDescriptor ResponseInfo
                lastBlockHeight__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "last_block_height"
                      (Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional lastBlockHeight)
                      :: Data.ProtoLens.FieldDescriptor ResponseInfo
                lastBlockAppHash__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "last_block_app_hash"
                      (Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         lastBlockAppHash)
                      :: Data.ProtoLens.FieldDescriptor ResponseInfo
              in
              Data.ProtoLens.MessageDescriptor
                (Data.Text.pack "types.ResponseInfo")
                (Data.Map.fromList
                   [(Data.ProtoLens.Tag 1, data'__field_descriptor),
                    (Data.ProtoLens.Tag 2, version__field_descriptor),
                    (Data.ProtoLens.Tag 3, lastBlockHeight__field_descriptor),
                    (Data.ProtoLens.Tag 4, lastBlockAppHash__field_descriptor)])
                (Data.Map.fromList
                   [("data", data'__field_descriptor),
                    ("version", version__field_descriptor),
                    ("last_block_height", lastBlockHeight__field_descriptor),
                    ("last_block_app_hash", lastBlockAppHash__field_descriptor)])

data ResponseInitChain = ResponseInitChain{}
                       deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)

instance Data.Default.Class.Default ResponseInitChain where
        def = ResponseInitChain{}

instance Data.ProtoLens.Message ResponseInitChain where
        descriptor
          = let in
              Data.ProtoLens.MessageDescriptor
                (Data.Text.pack "types.ResponseInitChain")
                (Data.Map.fromList [])
                (Data.Map.fromList [])

data ResponseQuery = ResponseQuery{_ResponseQuery'code ::
                                   !Data.Word.Word32,
                                   _ResponseQuery'index :: !Data.Int.Int64,
                                   _ResponseQuery'key :: !Data.ByteString.ByteString,
                                   _ResponseQuery'value :: !Data.ByteString.ByteString,
                                   _ResponseQuery'proof :: !Data.ByteString.ByteString,
                                   _ResponseQuery'height :: !Data.Int.Int64,
                                   _ResponseQuery'log :: !Data.Text.Text}
                   deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)

instance (a ~ Data.Word.Word32, b ~ Data.Word.Word32,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "code" f ResponseQuery ResponseQuery a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResponseQuery'code
                 (\ x__ y__ -> x__{_ResponseQuery'code = y__}))
              Prelude.id

instance (a ~ Data.Int.Int64, b ~ Data.Int.Int64,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "index" f ResponseQuery ResponseQuery a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResponseQuery'index
                 (\ x__ y__ -> x__{_ResponseQuery'index = y__}))
              Prelude.id

instance (a ~ Data.ByteString.ByteString,
          b ~ Data.ByteString.ByteString, Prelude.Functor f) =>
         Lens.Labels.HasLens "key" f ResponseQuery ResponseQuery a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResponseQuery'key
                 (\ x__ y__ -> x__{_ResponseQuery'key = y__}))
              Prelude.id

instance (a ~ Data.ByteString.ByteString,
          b ~ Data.ByteString.ByteString, Prelude.Functor f) =>
         Lens.Labels.HasLens "value" f ResponseQuery ResponseQuery a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResponseQuery'value
                 (\ x__ y__ -> x__{_ResponseQuery'value = y__}))
              Prelude.id

instance (a ~ Data.ByteString.ByteString,
          b ~ Data.ByteString.ByteString, Prelude.Functor f) =>
         Lens.Labels.HasLens "proof" f ResponseQuery ResponseQuery a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResponseQuery'proof
                 (\ x__ y__ -> x__{_ResponseQuery'proof = y__}))
              Prelude.id

instance (a ~ Data.Int.Int64, b ~ Data.Int.Int64,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "height" f ResponseQuery ResponseQuery a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResponseQuery'height
                 (\ x__ y__ -> x__{_ResponseQuery'height = y__}))
              Prelude.id

instance (a ~ Data.Text.Text, b ~ Data.Text.Text,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "log" f ResponseQuery ResponseQuery a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResponseQuery'log
                 (\ x__ y__ -> x__{_ResponseQuery'log = y__}))
              Prelude.id

instance Data.Default.Class.Default ResponseQuery where
        def
          = ResponseQuery{_ResponseQuery'code = Data.ProtoLens.fieldDefault,
                          _ResponseQuery'index = Data.ProtoLens.fieldDefault,
                          _ResponseQuery'key = Data.ProtoLens.fieldDefault,
                          _ResponseQuery'value = Data.ProtoLens.fieldDefault,
                          _ResponseQuery'proof = Data.ProtoLens.fieldDefault,
                          _ResponseQuery'height = Data.ProtoLens.fieldDefault,
                          _ResponseQuery'log = Data.ProtoLens.fieldDefault}

instance Data.ProtoLens.Message ResponseQuery where
        descriptor
          = let code__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "code"
                      (Data.ProtoLens.UInt32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional code)
                      :: Data.ProtoLens.FieldDescriptor ResponseQuery
                index__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "index"
                      (Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional index)
                      :: Data.ProtoLens.FieldDescriptor ResponseQuery
                key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional key)
                      :: Data.ProtoLens.FieldDescriptor ResponseQuery
                value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional value)
                      :: Data.ProtoLens.FieldDescriptor ResponseQuery
                proof__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "proof"
                      (Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional proof)
                      :: Data.ProtoLens.FieldDescriptor ResponseQuery
                height__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "height"
                      (Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional height)
                      :: Data.ProtoLens.FieldDescriptor ResponseQuery
                log__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "log"
                      (Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional log)
                      :: Data.ProtoLens.FieldDescriptor ResponseQuery
              in
              Data.ProtoLens.MessageDescriptor
                (Data.Text.pack "types.ResponseQuery")
                (Data.Map.fromList
                   [(Data.ProtoLens.Tag 1, code__field_descriptor),
                    (Data.ProtoLens.Tag 2, index__field_descriptor),
                    (Data.ProtoLens.Tag 3, key__field_descriptor),
                    (Data.ProtoLens.Tag 4, value__field_descriptor),
                    (Data.ProtoLens.Tag 5, proof__field_descriptor),
                    (Data.ProtoLens.Tag 6, height__field_descriptor),
                    (Data.ProtoLens.Tag 7, log__field_descriptor)])
                (Data.Map.fromList
                   [("code", code__field_descriptor),
                    ("index", index__field_descriptor), ("key", key__field_descriptor),
                    ("value", value__field_descriptor),
                    ("proof", proof__field_descriptor),
                    ("height", height__field_descriptor),
                    ("log", log__field_descriptor)])

data ResponseSetOption = ResponseSetOption{_ResponseSetOption'code
                                           :: !Data.Word.Word32,
                                           _ResponseSetOption'log :: !Data.Text.Text}
                       deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)

instance (a ~ Data.Word.Word32, b ~ Data.Word.Word32,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "code" f ResponseSetOption ResponseSetOption a
           b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResponseSetOption'code
                 (\ x__ y__ -> x__{_ResponseSetOption'code = y__}))
              Prelude.id

instance (a ~ Data.Text.Text, b ~ Data.Text.Text,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "log" f ResponseSetOption ResponseSetOption a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResponseSetOption'log
                 (\ x__ y__ -> x__{_ResponseSetOption'log = y__}))
              Prelude.id

instance Data.Default.Class.Default ResponseSetOption where
        def
          = ResponseSetOption{_ResponseSetOption'code =
                                Data.ProtoLens.fieldDefault,
                              _ResponseSetOption'log = Data.ProtoLens.fieldDefault}

instance Data.ProtoLens.Message ResponseSetOption where
        descriptor
          = let code__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "code"
                      (Data.ProtoLens.UInt32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional code)
                      :: Data.ProtoLens.FieldDescriptor ResponseSetOption
                log__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "log"
                      (Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional log)
                      :: Data.ProtoLens.FieldDescriptor ResponseSetOption
              in
              Data.ProtoLens.MessageDescriptor
                (Data.Text.pack "types.ResponseSetOption")
                (Data.Map.fromList
                   [(Data.ProtoLens.Tag 1, code__field_descriptor),
                    (Data.ProtoLens.Tag 2, log__field_descriptor)])
                (Data.Map.fromList
                   [("code", code__field_descriptor), ("log", log__field_descriptor)])

data TxSize = TxSize{_TxSize'maxBytes :: !Data.Int.Int32,
                     _TxSize'maxGas :: !Data.Int.Int64}
            deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)

instance (a ~ Data.Int.Int32, b ~ Data.Int.Int32,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "maxBytes" f TxSize TxSize a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TxSize'maxBytes
                 (\ x__ y__ -> x__{_TxSize'maxBytes = y__}))
              Prelude.id

instance (a ~ Data.Int.Int64, b ~ Data.Int.Int64,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "maxGas" f TxSize TxSize a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TxSize'maxGas
                 (\ x__ y__ -> x__{_TxSize'maxGas = y__}))
              Prelude.id

instance Data.Default.Class.Default TxSize where
        def
          = TxSize{_TxSize'maxBytes = Data.ProtoLens.fieldDefault,
                   _TxSize'maxGas = Data.ProtoLens.fieldDefault}

instance Data.ProtoLens.Message TxSize where
        descriptor
          = let maxBytes__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "max_bytes"
                      (Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional maxBytes)
                      :: Data.ProtoLens.FieldDescriptor TxSize
                maxGas__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "max_gas"
                      (Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional maxGas)
                      :: Data.ProtoLens.FieldDescriptor TxSize
              in
              Data.ProtoLens.MessageDescriptor (Data.Text.pack "types.TxSize")
                (Data.Map.fromList
                   [(Data.ProtoLens.Tag 1, maxBytes__field_descriptor),
                    (Data.ProtoLens.Tag 2, maxGas__field_descriptor)])
                (Data.Map.fromList
                   [("max_bytes", maxBytes__field_descriptor),
                    ("max_gas", maxGas__field_descriptor)])

data Validator = Validator{_Validator'pubKey ::
                           !Data.ByteString.ByteString,
                           _Validator'power :: !Data.Int.Int64}
               deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)

instance (a ~ Data.ByteString.ByteString,
          b ~ Data.ByteString.ByteString, Prelude.Functor f) =>
         Lens.Labels.HasLens "pubKey" f Validator Validator a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Validator'pubKey
                 (\ x__ y__ -> x__{_Validator'pubKey = y__}))
              Prelude.id

instance (a ~ Data.Int.Int64, b ~ Data.Int.Int64,
          Prelude.Functor f) =>
         Lens.Labels.HasLens "power" f Validator Validator a b
         where
        lensOf _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Validator'power
                 (\ x__ y__ -> x__{_Validator'power = y__}))
              Prelude.id

instance Data.Default.Class.Default Validator where
        def
          = Validator{_Validator'pubKey = Data.ProtoLens.fieldDefault,
                      _Validator'power = Data.ProtoLens.fieldDefault}

instance Data.ProtoLens.Message Validator where
        descriptor
          = let pubKey__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "pub_key"
                      (Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional pubKey)
                      :: Data.ProtoLens.FieldDescriptor Validator
                power__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "power"
                      (Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional power)
                      :: Data.ProtoLens.FieldDescriptor Validator
              in
              Data.ProtoLens.MessageDescriptor (Data.Text.pack "types.Validator")
                (Data.Map.fromList
                   [(Data.ProtoLens.Tag 1, pubKey__field_descriptor),
                    (Data.ProtoLens.Tag 2, power__field_descriptor)])
                (Data.Map.fromList
                   [("pub_key", pubKey__field_descriptor),
                    ("power", power__field_descriptor)])

absentValidators ::
                 forall f s t a b .
                   (Lens.Labels.HasLens "absentValidators" f s t a b) =>
                   Lens.Family2.LensLike f s t a b
absentValidators
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "absentValidators")

appHash ::
        forall f s t a b . (Lens.Labels.HasLens "appHash" f s t a b) =>
          Lens.Family2.LensLike f s t a b
appHash
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "appHash")

beginBlock ::
           forall f s t a b . (Lens.Labels.HasLens "beginBlock" f s t a b) =>
             Lens.Family2.LensLike f s t a b
beginBlock
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "beginBlock")

blockGossip ::
            forall f s t a b . (Lens.Labels.HasLens "blockGossip" f s t a b) =>
              Lens.Family2.LensLike f s t a b
blockGossip
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "blockGossip")

blockPartSizeBytes ::
                   forall f s t a b .
                     (Lens.Labels.HasLens "blockPartSizeBytes" f s t a b) =>
                     Lens.Family2.LensLike f s t a b
blockPartSizeBytes
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "blockPartSizeBytes")

blockSize ::
          forall f s t a b . (Lens.Labels.HasLens "blockSize" f s t a b) =>
            Lens.Family2.LensLike f s t a b
blockSize
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "blockSize")

byzantineValidators ::
                    forall f s t a b .
                      (Lens.Labels.HasLens "byzantineValidators" f s t a b) =>
                      Lens.Family2.LensLike f s t a b
byzantineValidators
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "byzantineValidators")

chainId ::
        forall f s t a b . (Lens.Labels.HasLens "chainId" f s t a b) =>
          Lens.Family2.LensLike f s t a b
chainId
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "chainId")

checkTx ::
        forall f s t a b . (Lens.Labels.HasLens "checkTx" f s t a b) =>
          Lens.Family2.LensLike f s t a b
checkTx
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "checkTx")

code ::
     forall f s t a b . (Lens.Labels.HasLens "code" f s t a b) =>
       Lens.Family2.LensLike f s t a b
code
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "code")

commit ::
       forall f s t a b . (Lens.Labels.HasLens "commit" f s t a b) =>
         Lens.Family2.LensLike f s t a b
commit
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "commit")

consensusParamUpdates ::
                      forall f s t a b .
                        (Lens.Labels.HasLens "consensusParamUpdates" f s t a b) =>
                        Lens.Family2.LensLike f s t a b
consensusParamUpdates
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "consensusParamUpdates")

data' ::
      forall f s t a b . (Lens.Labels.HasLens "data'" f s t a b) =>
        Lens.Family2.LensLike f s t a b
data'
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "data'")

dataHash ::
         forall f s t a b . (Lens.Labels.HasLens "dataHash" f s t a b) =>
           Lens.Family2.LensLike f s t a b
dataHash
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "dataHash")

deliverTx ::
          forall f s t a b . (Lens.Labels.HasLens "deliverTx" f s t a b) =>
            Lens.Family2.LensLike f s t a b
deliverTx
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "deliverTx")

echo ::
     forall f s t a b . (Lens.Labels.HasLens "echo" f s t a b) =>
       Lens.Family2.LensLike f s t a b
echo
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "echo")

endBlock ::
         forall f s t a b . (Lens.Labels.HasLens "endBlock" f s t a b) =>
           Lens.Family2.LensLike f s t a b
endBlock
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "endBlock")

error ::
      forall f s t a b . (Lens.Labels.HasLens "error" f s t a b) =>
        Lens.Family2.LensLike f s t a b
error
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "error")

exception ::
          forall f s t a b . (Lens.Labels.HasLens "exception" f s t a b) =>
            Lens.Family2.LensLike f s t a b
exception
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "exception")

fee ::
    forall f s t a b . (Lens.Labels.HasLens "fee" f s t a b) =>
      Lens.Family2.LensLike f s t a b
fee
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fee")

flush ::
      forall f s t a b . (Lens.Labels.HasLens "flush" f s t a b) =>
        Lens.Family2.LensLike f s t a b
flush
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "flush")

gas ::
    forall f s t a b . (Lens.Labels.HasLens "gas" f s t a b) =>
      Lens.Family2.LensLike f s t a b
gas
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "gas")

hash ::
     forall f s t a b . (Lens.Labels.HasLens "hash" f s t a b) =>
       Lens.Family2.LensLike f s t a b
hash
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "hash")

header ::
       forall f s t a b . (Lens.Labels.HasLens "header" f s t a b) =>
         Lens.Family2.LensLike f s t a b
header
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "header")

height ::
       forall f s t a b . (Lens.Labels.HasLens "height" f s t a b) =>
         Lens.Family2.LensLike f s t a b
height
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "height")

index ::
      forall f s t a b . (Lens.Labels.HasLens "index" f s t a b) =>
        Lens.Family2.LensLike f s t a b
index
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "index")

info ::
     forall f s t a b . (Lens.Labels.HasLens "info" f s t a b) =>
       Lens.Family2.LensLike f s t a b
info
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "info")

initChain ::
          forall f s t a b . (Lens.Labels.HasLens "initChain" f s t a b) =>
            Lens.Family2.LensLike f s t a b
initChain
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "initChain")

key ::
    forall f s t a b . (Lens.Labels.HasLens "key" f s t a b) =>
      Lens.Family2.LensLike f s t a b
key
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key")

lastBlockAppHash ::
                 forall f s t a b .
                   (Lens.Labels.HasLens "lastBlockAppHash" f s t a b) =>
                   Lens.Family2.LensLike f s t a b
lastBlockAppHash
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "lastBlockAppHash")

lastBlockHeight ::
                forall f s t a b .
                  (Lens.Labels.HasLens "lastBlockHeight" f s t a b) =>
                  Lens.Family2.LensLike f s t a b
lastBlockHeight
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "lastBlockHeight")

lastBlockId ::
            forall f s t a b . (Lens.Labels.HasLens "lastBlockId" f s t a b) =>
              Lens.Family2.LensLike f s t a b
lastBlockId
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "lastBlockId")

lastCommitHash ::
               forall f s t a b .
                 (Lens.Labels.HasLens "lastCommitHash" f s t a b) =>
                 Lens.Family2.LensLike f s t a b
lastCommitHash
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "lastCommitHash")

log ::
    forall f s t a b . (Lens.Labels.HasLens "log" f s t a b) =>
      Lens.Family2.LensLike f s t a b
log
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "log")

maxBytes ::
         forall f s t a b . (Lens.Labels.HasLens "maxBytes" f s t a b) =>
           Lens.Family2.LensLike f s t a b
maxBytes
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maxBytes")

maxGas ::
       forall f s t a b . (Lens.Labels.HasLens "maxGas" f s t a b) =>
         Lens.Family2.LensLike f s t a b
maxGas
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maxGas")

maxTxs ::
       forall f s t a b . (Lens.Labels.HasLens "maxTxs" f s t a b) =>
         Lens.Family2.LensLike f s t a b
maxTxs
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maxTxs")

maybe'beginBlock ::
                 forall f s t a b .
                   (Lens.Labels.HasLens "maybe'beginBlock" f s t a b) =>
                   Lens.Family2.LensLike f s t a b
maybe'beginBlock
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'beginBlock")

maybe'blockGossip ::
                  forall f s t a b .
                    (Lens.Labels.HasLens "maybe'blockGossip" f s t a b) =>
                    Lens.Family2.LensLike f s t a b
maybe'blockGossip
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'blockGossip")

maybe'blockSize ::
                forall f s t a b .
                  (Lens.Labels.HasLens "maybe'blockSize" f s t a b) =>
                  Lens.Family2.LensLike f s t a b
maybe'blockSize
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'blockSize")

maybe'checkTx ::
              forall f s t a b .
                (Lens.Labels.HasLens "maybe'checkTx" f s t a b) =>
                Lens.Family2.LensLike f s t a b
maybe'checkTx
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'checkTx")

maybe'commit ::
             forall f s t a b .
               (Lens.Labels.HasLens "maybe'commit" f s t a b) =>
               Lens.Family2.LensLike f s t a b
maybe'commit
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'commit")

maybe'consensusParamUpdates ::
                            forall f s t a b .
                              (Lens.Labels.HasLens "maybe'consensusParamUpdates" f s t a b) =>
                              Lens.Family2.LensLike f s t a b
maybe'consensusParamUpdates
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'consensusParamUpdates")

maybe'deliverTx ::
                forall f s t a b .
                  (Lens.Labels.HasLens "maybe'deliverTx" f s t a b) =>
                  Lens.Family2.LensLike f s t a b
maybe'deliverTx
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'deliverTx")

maybe'echo ::
           forall f s t a b . (Lens.Labels.HasLens "maybe'echo" f s t a b) =>
             Lens.Family2.LensLike f s t a b
maybe'echo
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'echo")

maybe'endBlock ::
               forall f s t a b .
                 (Lens.Labels.HasLens "maybe'endBlock" f s t a b) =>
                 Lens.Family2.LensLike f s t a b
maybe'endBlock
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'endBlock")

maybe'exception ::
                forall f s t a b .
                  (Lens.Labels.HasLens "maybe'exception" f s t a b) =>
                  Lens.Family2.LensLike f s t a b
maybe'exception
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'exception")

maybe'flush ::
            forall f s t a b . (Lens.Labels.HasLens "maybe'flush" f s t a b) =>
              Lens.Family2.LensLike f s t a b
maybe'flush
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'flush")

maybe'header ::
             forall f s t a b .
               (Lens.Labels.HasLens "maybe'header" f s t a b) =>
               Lens.Family2.LensLike f s t a b
maybe'header
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")

maybe'info ::
           forall f s t a b . (Lens.Labels.HasLens "maybe'info" f s t a b) =>
             Lens.Family2.LensLike f s t a b
maybe'info
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'info")

maybe'initChain ::
                forall f s t a b .
                  (Lens.Labels.HasLens "maybe'initChain" f s t a b) =>
                  Lens.Family2.LensLike f s t a b
maybe'initChain
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'initChain")

maybe'lastBlockId ::
                  forall f s t a b .
                    (Lens.Labels.HasLens "maybe'lastBlockId" f s t a b) =>
                    Lens.Family2.LensLike f s t a b
maybe'lastBlockId
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'lastBlockId")

maybe'parts ::
            forall f s t a b . (Lens.Labels.HasLens "maybe'parts" f s t a b) =>
              Lens.Family2.LensLike f s t a b
maybe'parts
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'parts")

maybe'query ::
            forall f s t a b . (Lens.Labels.HasLens "maybe'query" f s t a b) =>
              Lens.Family2.LensLike f s t a b
maybe'query
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'query")

maybe'setOption ::
                forall f s t a b .
                  (Lens.Labels.HasLens "maybe'setOption" f s t a b) =>
                  Lens.Family2.LensLike f s t a b
maybe'setOption
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'setOption")

maybe'txSize ::
             forall f s t a b .
               (Lens.Labels.HasLens "maybe'txSize" f s t a b) =>
               Lens.Family2.LensLike f s t a b
maybe'txSize
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'txSize")

maybe'value ::
            forall f s t a b . (Lens.Labels.HasLens "maybe'value" f s t a b) =>
              Lens.Family2.LensLike f s t a b
maybe'value
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'value")

message ::
        forall f s t a b . (Lens.Labels.HasLens "message" f s t a b) =>
          Lens.Family2.LensLike f s t a b
message
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "message")

numTxs ::
       forall f s t a b . (Lens.Labels.HasLens "numTxs" f s t a b) =>
         Lens.Family2.LensLike f s t a b
numTxs
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "numTxs")

parts ::
      forall f s t a b . (Lens.Labels.HasLens "parts" f s t a b) =>
        Lens.Family2.LensLike f s t a b
parts
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "parts")

path ::
     forall f s t a b . (Lens.Labels.HasLens "path" f s t a b) =>
       Lens.Family2.LensLike f s t a b
path
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "path")

power ::
      forall f s t a b . (Lens.Labels.HasLens "power" f s t a b) =>
        Lens.Family2.LensLike f s t a b
power
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "power")

proof ::
      forall f s t a b . (Lens.Labels.HasLens "proof" f s t a b) =>
        Lens.Family2.LensLike f s t a b
proof
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "proof")

prove ::
      forall f s t a b . (Lens.Labels.HasLens "prove" f s t a b) =>
        Lens.Family2.LensLike f s t a b
prove
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "prove")

pubKey ::
       forall f s t a b . (Lens.Labels.HasLens "pubKey" f s t a b) =>
         Lens.Family2.LensLike f s t a b
pubKey
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "pubKey")

query ::
      forall f s t a b . (Lens.Labels.HasLens "query" f s t a b) =>
        Lens.Family2.LensLike f s t a b
query
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "query")

setOption ::
          forall f s t a b . (Lens.Labels.HasLens "setOption" f s t a b) =>
            Lens.Family2.LensLike f s t a b
setOption
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "setOption")

tags ::
     forall f s t a b . (Lens.Labels.HasLens "tags" f s t a b) =>
       Lens.Family2.LensLike f s t a b
tags
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "tags")

time ::
     forall f s t a b . (Lens.Labels.HasLens "time" f s t a b) =>
       Lens.Family2.LensLike f s t a b
time
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "time")

total ::
      forall f s t a b . (Lens.Labels.HasLens "total" f s t a b) =>
        Lens.Family2.LensLike f s t a b
total
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "total")

tx ::
   forall f s t a b . (Lens.Labels.HasLens "tx" f s t a b) =>
     Lens.Family2.LensLike f s t a b
tx
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "tx")

txSize ::
       forall f s t a b . (Lens.Labels.HasLens "txSize" f s t a b) =>
         Lens.Family2.LensLike f s t a b
txSize
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "txSize")

validatorUpdates ::
                 forall f s t a b .
                   (Lens.Labels.HasLens "validatorUpdates" f s t a b) =>
                   Lens.Family2.LensLike f s t a b
validatorUpdates
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "validatorUpdates")

validators ::
           forall f s t a b . (Lens.Labels.HasLens "validators" f s t a b) =>
             Lens.Family2.LensLike f s t a b
validators
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "validators")

validatorsHash ::
               forall f s t a b .
                 (Lens.Labels.HasLens "validatorsHash" f s t a b) =>
                 Lens.Family2.LensLike f s t a b
validatorsHash
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "validatorsHash")

value ::
      forall f s t a b . (Lens.Labels.HasLens "value" f s t a b) =>
        Lens.Family2.LensLike f s t a b
value
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "value")

valueInt ::
         forall f s t a b . (Lens.Labels.HasLens "valueInt" f s t a b) =>
           Lens.Family2.LensLike f s t a b
valueInt
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "valueInt")

valueString ::
            forall f s t a b . (Lens.Labels.HasLens "valueString" f s t a b) =>
              Lens.Family2.LensLike f s t a b
valueString
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "valueString")

valueType ::
          forall f s t a b . (Lens.Labels.HasLens "valueType" f s t a b) =>
            Lens.Family2.LensLike f s t a b
valueType
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "valueType")

version ::
        forall f s t a b . (Lens.Labels.HasLens "version" f s t a b) =>
          Lens.Family2.LensLike f s t a b
version
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "version")