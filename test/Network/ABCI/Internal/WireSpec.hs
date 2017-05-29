module Network.ABCI.Internal.WireSpec (main, spec) where

import Test.Hspec
import Network.ABCI.Internal.Wire


main :: IO ()
main = hspec spec

spec :: Spec
spec = do

  it "works" $ do
    True `shouldBe`True
