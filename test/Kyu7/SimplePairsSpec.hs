module Kyu7.SimplePairsSpec where

import Kyu7.SimplePairs
import Test.Hspec

spec :: Spec
spec = do
  describe "Simple consecutive pairs" $ do
    it "Basic tests" $ do
      pairs [1, 2, 5, 8, -4, -3, 7, 6, 5] `shouldBe` 3
      pairs [21, 20, 22, 40, 39, -56, 30, -55, 95, 94] `shouldBe` 2
      pairs [81, 44, 80, 26, 12, 27, -34, 37, -35] `shouldBe` 0
      pairs [-55, -56, -7, -6, 56, 55, 63, 62] `shouldBe` 4
      pairs [73, 72, 8, 9, 73, 72] `shouldBe` 3
