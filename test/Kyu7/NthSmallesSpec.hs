module Kyu7.NthSmallesSpec where

import Kyu7.NthSmallest
import Test.Hspec

spec :: Spec
spec = do
  describe "finds the nth smallest" $ do
    it "on some fixed cases" $ do
      nthSmallest [3, 1, 2] 2 `shouldBe` 2
      nthSmallest [15, 20, 7, 10, 4, 3] 3 `shouldBe` 7
      nthSmallest [-5, -1, -6, -18] 4 `shouldBe` (-1)
      nthSmallest [-102, -16, -1, -2, -367, -9] 5 `shouldBe` (-2)
      nthSmallest [2, 169, 13, -5, 0, -1] 4 `shouldBe` 2
