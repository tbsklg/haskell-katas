module Kyu7.RangeBitCountingSpec (spec) where

import Kyu7.RangeBitCounting (rangeBitCount)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    rangeBitCount 2 7 `shouldBe` 11
    rangeBitCount 0 1 `shouldBe` 1
    rangeBitCount 4 4 `shouldBe` 1
