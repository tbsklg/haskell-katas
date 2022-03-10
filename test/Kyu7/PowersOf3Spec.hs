module Kyu7.PowersOf3Spec (spec) where

import Kyu7.PowersOf3 (largestPower)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    largestPower 3 `shouldBe` 0
    largestPower 5 `shouldBe` 1
    largestPower 7 `shouldBe` 1
    largestPower 81 `shouldBe` 3
    largestPower 82 `shouldBe` 4
