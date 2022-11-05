module Kyu7.NumbersInOrderSpec (spec) where

import Kyu7.NumbersInOrder (isAscOrder)
import Test.Hspec
import Test.QuickCheck

spec = do
  describe "isAscOrder" $ do
    it "should work for examples provided in the description" $ do
      isAscOrder [1, 2, 4, 7, 19] `shouldBe` True
      isAscOrder [1, 2, 3, 4, 5] `shouldBe` True
      isAscOrder [1, 6, 10, 18, 2, 4, 20] `shouldBe` False
      isAscOrder [9, 8, 7, 6, 5, 4, 3, 2, 1] `shouldBe` False
