{-# LANGUAGE RankNTypes #-}
module Network.ABCI.Internal.WireSpec (main, spec) where

import           Network.ABCI.Internal.Wire

import           Control.Monad (replicateM)
import qualified Data.Binary.Put as Put
import qualified Data.ByteString as BS
import qualified Data.ByteString.Lazy as LBS
import           Data.Conduit
import qualified Data.Conduit.List as CL
import           Data.Either (isLeft)
import           Data.Functor.Identity (Identity(runIdentity))
import           Data.Monoid ((<>))
import           Test.Hspec
import           Test.QuickCheck


main :: IO ()
main = hspec spec

spec :: Spec
spec = do

  describe "beWordFromBytes" $ do
    it "works for an empty bytestring" $
      beWordFromBytes BS.empty `shouldBe` Right 0

    it "works for 1 byte length bytestrings" $ property $ \word ->
      beWordFromBytes (runPut (Put.putWord8 word)) == Right (fromIntegral word)

    it "works for 2 byte length bytestrings" $ property $ \word ->
      beWordFromBytes (runPut (Put.putWord16be word)) == Right (fromIntegral word)

    it "works for 4 byte length bytestrings" $ property $ \word ->
      beWordFromBytes (runPut (Put.putWord32be word)) == Right (fromIntegral word)

    it "works for 8 byte length bytestrings" $ property $ \word ->
      beWordFromBytes (runPut (Put.putWord64be word)) == Right word

    it "fails for bytestring larger than 8 bytes" $
      let arbitraryBsLenGt8 =
            choose (9,2000) >>= randomBytestringOfLength
      in forAll arbitraryBsLenGt8 $ \bs ->
        beWordFromBytes bs `shouldSatisfy` isLeft

  describe "decodeLengthPrefixC / encodeLengthPrefixC" $ do

    -- | This property test (see https://en.wikipedia.org/wiki/QuickCheck)
    -- for pointers on what this is) checks that these functions are the
    -- inverse of each other for arbitrarily chunked arbitrary 'ByteString's.
    -- When the 'Producer' is a real socket, each chunk is the result of a
    -- 'recv' call. We check for robustness against a peer that decides to
    -- flush their side of the connection in funky ways.

    it "decoding an encoded bytestring yields the same bytestring" $
      property $ \(bytelist, nonNegativeChunkSizes) ->
        let conduit = chunksProducer bytes nonNegativeChunkSizes
                  =$= encodeLengthPrefixC
                  =$= decodeLengthPrefixC
                  =$= consumeValidChunks
            bytes = BS.pack bytelist
        in runIdConduit conduit == Right bytes

  describe "decodeLengthPrefixC" $ do

    it "fails gracefully when given a string larger than maxMessageLen" $
      let ginormousSizeVarLen = 8 `BS.cons` runPut (Put.putWord64be maxBound)
          conduit = yield ginormousSizeVarLen
                =$= decodeLengthPrefixC
                =$= consumeValidChunks
      in runIdConduit conduit `shouldSatisfy` isLeft


-- Takes a 'ByteString' and a list of chunkSizes >= 0 and yields the
-- 'ByteString' split into chunks of the given sizes
--
-- We allow empty chunks to check how they're handled. However, these
-- are probably never produced when the real 'Producer' is a socket
-- since the underlying 'recv' call should, in principle, never yield
-- an empty chunk as this means our peer has closed their side of
-- the connection (according to https://hackage.haskell.org/package/network-bytestring-0.1.3.4/docs/Network-Socket-ByteString.html#v:recv)
chunksProducer
  :: Monad m
  => BS.ByteString -> [NonNegative Int] -> Producer m BS.ByteString
chunksProducer bs [] = yield bs
chunksProducer bs _ | BS.null bs = return ()
chunksProducer bs (c:cs) = yield chunk >> chunksProducer rest cs
  where (chunk, rest) = BS.splitAt (getNonNegative c) bs

randomBytestringOfLength :: Int -> Gen BS.ByteString
randomBytestringOfLength len = BS.pack <$> replicateM len arbitrary

runIdConduit :: Sink () Identity a -> a
runIdConduit = runIdentity . runConduit

-- This consumer will concatenate all the valid decoded chunks.
-- The first error encountered will be the result of the 'Consumer'
-- without checking for further errors
consumeValidChunks
  :: Monad m
  => Sink (Either String BS.ByteString) m (Either String BS.ByteString)
consumeValidChunks = CL.fold step (Right BS.empty)
  where
    step (Right acc) (Right s)  = Right (acc <> s)
    step (Right _)   (Left err) = Left err
    step (Left err)  _          = Left err

runPut :: Put.Put -> BS.ByteString
runPut = LBS.toStrict . Put.runPut
