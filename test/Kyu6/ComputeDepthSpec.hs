module Kyu6.ComputeDepthSpec where

import Kyu6.ComputeDepth
import Test.Hspec

spec :: Spec
spec = do
  describe "Integer depth" $ do
    it "Basic tests" $ do
      computeDepth 1 `shouldBe` 10
      computeDepth 42 `shouldBe` 9
