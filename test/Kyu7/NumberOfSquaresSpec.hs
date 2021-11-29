module Kyu7.NumberOfSquaresSpec where

import Kyu7.NumberOfSquares
import Test.QuickCheck
import Test.Hspec

spec :: Spec
spec = do
  describe "The getNumberOfSquares function" $ do
    it "should work for some examples" $ do
      getNumberOfSquares 1 `shouldBe` 0
      getNumberOfSquares 2 `shouldBe` 1    
      getNumberOfSquares 5 `shouldBe` 1
      getNumberOfSquares 6 `shouldBe` 2
      getNumberOfSquares 15 `shouldBe` 3
