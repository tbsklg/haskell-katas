module Kyu7.FindUnknownNumberSpec where

import Kyu7.FindUnknownNumber
import Test.Hspec

spec = do
  describe "Find Unknown Number" $ do
    it "Basic tests" $ do
      findUnknown 2 3 2 `shouldBe` 23
      findUnknown 1 2 3 `shouldBe` 52
      findUnknown 1 3 5 `shouldBe` 103
      findUnknown 0 0 0 `shouldBe` 105
      findUnknown 1 1 1 `shouldBe` 1
