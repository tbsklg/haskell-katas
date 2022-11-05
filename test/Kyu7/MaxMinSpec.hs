module Kyu7.MaxMinSpec where

import Kyu7.MaxMin
import Test.Hspec

spec :: Spec
spec = do
  describe "Max-min arrays" $ do
    it "Basic tests" $ do
      solve [15, 11, 10, 7, 12] `shouldBe` [15, 7, 12, 10, 11]
      solve [91, 75, 86, 14, 82] `shouldBe` [91, 14, 86, 75, 82]
      solve [84, 79, 76, 61, 78] `shouldBe` [84, 61, 79, 76, 78]
      solve [52, 77, 72, 44, 74, 76, 40] `shouldBe` [77, 40, 76, 44, 74, 52, 72]
      solve [1, 6, 9, 4, 3, 7, 8, 2] `shouldBe` [9, 1, 8, 2, 7, 3, 6, 4]
      solve [78, 79, 52, 87, 16, 74, 31, 63, 80] `shouldBe` [87, 16, 80, 31, 79, 52, 78, 63, 74]
