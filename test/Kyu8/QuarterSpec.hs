module Kyu8.QuarterSpec (spec) where

import Kyu8.Quarter
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  it "Basic tests" $ do
    quarterOf 3 `shouldBe` 1
    quarterOf 8 `shouldBe` 3
    quarterOf 11 `shouldBe` 4
