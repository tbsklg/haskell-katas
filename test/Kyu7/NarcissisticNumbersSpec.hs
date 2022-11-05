module Kyu7.NarcissisticNumbersSpec where

import Kyu7.NarcissisticNumbers
import Test.Hspec

spec :: Spec
spec = do
  describe "Example Tests" $ do
    it "153" $ isNarcissistic 153 `shouldBe` True
    it "143" $ isNarcissistic 143 `shouldBe` False
