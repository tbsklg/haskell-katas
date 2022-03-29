module Kyu7.Pattern2Spec (spec) where

import Test.Hspec
import Kyu7.Pattern2 (pattern)

main = hspec spec
spec = do
  describe "Testing Pattern" $ do
    it "Static tests" $ do
      pattern 1 `shouldBe` "1"
      pattern 2 `shouldBe` "12\n2"
      pattern 5 `shouldBe` "12345\n2345\n345\n45\n5"