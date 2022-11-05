module Kyu7.Product2Spec where

import Kyu7.Product2 (product')
import Test.Hspec

spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
      product' "" `shouldBe` 0
      product' "!" `shouldBe` 0
      product' "!!??!!" `shouldBe` 8
