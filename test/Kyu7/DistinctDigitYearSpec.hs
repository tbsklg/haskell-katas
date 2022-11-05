module Kyu7.DistinctDigitYearSpec where

import Kyu7.DistinctDigitYear
import Test.Hspec

spec :: Spec
spec = do
  describe "finds the next distinct year" $ do
    it "a few fixed cases" $ do
      distinctDigitYear 1987 `shouldBe` 2013
      distinctDigitYear 2013 `shouldBe` 2014
      distinctDigitYear 2229 `shouldBe` 2301
