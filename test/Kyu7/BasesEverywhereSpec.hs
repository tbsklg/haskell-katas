module Kyu7.BasesEverywhereSpec (spec) where

import Kyu7.BasesEverywhere (baseFinder)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    baseFinder ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"] `shouldBe` 10
    baseFinder ["1", "2", "3", "4", "5", "6", "10", "11", "12", "13"] `shouldBe` 7
