module Kyu7.SquareDigitSpec where

import Kyu7.SquareDigit
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "Testing solution:" $ do
    it "Should double a positive integer:" $ do
      squareDigit 9119 `shouldBe` 811181
      squareDigit (-1) `shouldBe` (-1)
      squareDigit (0) `shouldBe` (0)
