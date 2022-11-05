module Kyu7.SquareSpec where

import Kyu7.Square (isSquare)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "isSquare" $ do
    it "should work for some examples" $ do
      isSquare (-1) `shouldBe` False
      isSquare 0 `shouldBe` True
      isSquare 3 `shouldBe` False
      isSquare 4 `shouldBe` True
      isSquare 25 `shouldBe` True
      isSquare 26 `shouldBe` False
    it "should work for random square numbers" $ do
      property $ \n -> isSquare (n ^ 2 :: Integer) `shouldBe` True
