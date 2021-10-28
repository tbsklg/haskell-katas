module Kyu7.NumberingSpec (spec) where

import Kyu7.Numbering (number)
import Test.Hspec

spec :: Spec
spec = do
  it "basic tests" $ do
    number [] `shouldBe` []
    number ["a", "b", "c"] `shouldBe` ["1: a", "2: b", "3: c"]