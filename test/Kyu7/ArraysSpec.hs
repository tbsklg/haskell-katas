module Kyu7.ArraysSpec where

import Kyu7.Arrays (uniqueSum)
import Test.Hspec

spec :: Spec
spec = do
  describe "uniqueSum" $ do
    it "works for some examples" $ do
      uniqueSum [1, 2, 3] `shouldBe` 6
      uniqueSum [1, 3, 8, 1, 8] `shouldBe` 12
      uniqueSum [1, 2, 3, 4, 4, 5] `shouldBe` 15
      uniqueSum [1, 2, 3, 2, 1] `shouldBe` 6
      uniqueSum [-1, -1, 5, 2, -7] `shouldBe` (-1)
