{- This module implements the wire protocol related functionality.

Note that we mark everything we expose as INLINEABLE so that the optimizer
can see more code when the 'Conduit' parts fuse.

For an explanation of what Stream Fusion is see:

https://www.fpcomplete.com/blog/2014/08/conduit-stream-fusion
https://pdfs.semanticscholar.org/64d2/a65a7d559f9b05570fb0fea8bb4cccd83ae2.pdf

FIXME: we should check core and/or benchmark this to make sure fusion is
really happening and change to INLINE to force inlining if it doesn't

-}
{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE OverloadedStrings #-}

module Network.ABCI.Internal.Wire (
  encodeLengthPrefixC
, decodeLengthPrefixC
, beWordFromBytes
) where

import qualified Data.Binary.Get as Get
import qualified Data.Binary.Put as Put
import           Data.Bits (shiftL)
import qualified Data.ByteString as BS
import           Data.ByteString.Lazy (toChunks)
import           Data.Conduit (Conduit, awaitForever, await, yield)
import           Data.Monoid ((<>))
import           Data.Word (Word64)
import           Text.Printf (printf)

maxMessageLen :: Int
maxMessageLen = 1024*1024 -- 1Mb, FIXME how large should we make it?


-- | Transforms a stream of 'ByteString' to a stream of varlength-prefixed
--   'ByteString's
encodeLengthPrefixC
  :: Monad m
  => Conduit BS.ByteString m BS.ByteString
encodeLengthPrefixC = awaitForever $
  mapM yield . toChunks . Put.runPut . putLengthPrefixedByteString
{-# INLINEABLE encodeLengthPrefixC #-}


-- | Transforms a stream of varlength-prefixed 'ByteString's to a stream
--   of 'ByteString's
decodeLengthPrefixC
  :: Monad m
  => Conduit BS.ByteString m (Either String BS.ByteString)
decodeLengthPrefixC = go "" initialDecoder
  where
    go leftOver (Get.Done leftOver2 _ result) = do
      yield (Right result)
      go (leftOver <> leftOver2) initialDecoder
    go leftOver (Get.Fail leftOver2 _ err) = do
      yield (Left err)
      go (leftOver <> leftOver2) initialDecoder
    go "" decoder = do
      mInput <- await
      case mInput of
        Nothing -> return ()
        Just s  -> go "" (Get.pushChunk decoder s)
    go leftOver decoder =
      go "" (Get.pushChunk decoder leftOver)

    initialDecoder = Get.runGetIncremental getLengthPrefixedByteString
{-# INLINEABLE decodeLengthPrefixC #-}

putLengthPrefixedByteString :: BS.ByteString -> Put.Put
putLengthPrefixedByteString s = do
  Put.putWord8 8
  Put.putWord64be (fromIntegral (BS.length s))
  Put.putByteString s
{-# INLINEABLE putLengthPrefixedByteString #-}


getLengthPrefixedByteString :: Get.Get BS.ByteString
getLengthPrefixedByteString = do
  lenLen <- fromIntegral <$> Get.getWord8
  mLen <- fmap fromIntegral . beWordFromBytes <$> Get.getByteString lenLen
  case mLen of
    Right len ->
      if len <= maxMessageLen
        then Get.getByteString len
        else fail "Message is too large"
    Left err -> fail err
{-# INLINEABLE getLengthPrefixedByteString #-}

-- Decodes a 'Word64' from an arbitrary length big-endian encoded 'ByteString'
-- of length <= 8 bytes.
--
-- Note: We could actually remove the length <= 8 bytes limitation by
-- decoding into an arbitrary size 'Integer' (slower) type.
-- However, the golang implementation also suffers from this "limitation" so
-- I assume this is expected behaviour.
-- In any case, we use this to decode the length of the
-- 'ByteString' we're receiving from the wire, anything that can't fit in
-- a 64bit is ridiculously large and will almost certainly consume all
-- available memory.
beWordFromBytes :: BS.ByteString -> Either String Word64
beWordFromBytes s | BS.length s > 8 =
  Left (printf "Max message size is 8 bytes, got %d" (BS.length s))
beWordFromBytes s = Right (snd (BS.foldr' step (0,0) s)) where
  step w (!pos,!acc) = (pos+1, acc + (fromIntegral w `shiftL` (pos*8)))
{-# INLINEABLE beWordFromBytes #-}
