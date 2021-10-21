module Kyu7.SingleDigitSpec (spec) where

import Kyu7.SingleDigit (singleDigit)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    singleDigit 5665 `shouldBe` 5
    singleDigit 123456789 `shouldBe` 1
