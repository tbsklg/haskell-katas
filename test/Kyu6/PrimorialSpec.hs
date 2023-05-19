module Kyu6.PrimorialSpec where

import Kyu6.Primorial
import Test.Hspec

spec = do
  describe "Primorial of a number" $ do
    it "Basic tests" $ do
      numPrimorial 3 `shouldBe` 30
      numPrimorial 4 `shouldBe` 210
      numPrimorial 5 `shouldBe` 2310
      numPrimorial 8 `shouldBe` 9699690
      numPrimorial 9 `shouldBe` 223092870
