module Kyu6.BitCountingSpec (spec) where

import Test.Hspec
import Kyu6.BitCounting (countBits)

spec :: Spec
spec = do
  it "example tests" $ do
    countBits 0 `shouldBe` 0
    countBits 4 `shouldBe` 1
    countBits 7 `shouldBe` 3
    countBits 9 `shouldBe` 2
    countBits 10 `shouldBe` 2

