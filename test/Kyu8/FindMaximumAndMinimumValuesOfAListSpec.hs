module Kyu8.FindMaximumAndMinimumValuesOfAListSpec (spec) where

import Kyu8.FindMaximumAndMinimumValuesOfAList as Solution (maximum, minimum)
import Test.Hspec

spec :: Spec
spec = do
  describe "example tests" $ do
    it "minimum" $ do
      Solution.minimum [-52, 56, 30, 29, -54, 0, -110] `shouldBe` -110
      Solution.minimum [42, 54, 65, 87, 0] `shouldBe` 0
    it "maximum" $ do
      Solution.maximum [4, 6, 2, 1, 9, 63, -134, 566] `shouldBe` 566
      Solution.maximum [5] `shouldBe` 5
