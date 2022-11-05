module Kyu7.OnesAndZeroesSpec (spec) where

import Kyu7.OnesAndZeroes (toNumber)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    toNumber [0, 0, 0, 1] `shouldBe` 1
    toNumber [0, 0, 1, 0] `shouldBe` 2
    toNumber [1, 1, 1, 1] `shouldBe` 15
    toNumber [0, 1, 1, 0] `shouldBe` 6
