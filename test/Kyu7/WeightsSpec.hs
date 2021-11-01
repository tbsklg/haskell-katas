module Kyu7.WeightsSpec where

import Kyu7.Weights (contentWeight)
import Test.Hspec

spec :: Spec
spec = do
  describe "contentWeight" $ do
    it "should work for larger contents" $ do
      contentWeight 120 "2 times larger" `shouldBe`  80
      contentWeight 180 "2 times larger" `shouldBe` 120
    it "should work for smaller contents" $ do
      contentWeight 120 "2 times smaller" `shouldBe`  40
      contentWeight 300 "2 times smaller" `shouldBe` 100