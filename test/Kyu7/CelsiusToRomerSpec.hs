module Kyu7.CelsiusToRomerSpec where

import Kyu7.CelsiusToRomer (celsiusToRomer)
import Test.Hspec

spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
      celsiusToRomer 24 `shouldBe` 20.1
      celsiusToRomer 8 `shouldBe` 11.7
      celsiusToRomer 29 `shouldBe` 22.725
