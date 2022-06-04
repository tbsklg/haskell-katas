module Kyu7.OddBitSpec (spec) where

import Kyu7.OddBit (anyOdd)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    anyOdd 2863311530 `shouldBe` 1
    anyOdd 128 `shouldBe` 1
    anyOdd 131 `shouldBe` 1
    anyOdd 2 `shouldBe` 1
    anyOdd 24082 `shouldBe` 1
    anyOdd 0 `shouldBe` 0
    anyOdd 85 `shouldBe` 0
    anyOdd 1024 `shouldBe` 0
    anyOdd 1 `shouldBe` 0
    anyOdd 1365 `shouldBe` 0
