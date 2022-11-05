module Kyu7.Pattern3Spec (spec) where

import Kyu7.Pattern3 (pattern)
import Test.Hspec

main = hspec spec

spec = do
  describe "Testing Pattern" $ do
    it "Static tests" $ do
      pattern 1 `shouldBe` "1"
      pattern 2 `shouldBe` "2\n21"
      pattern 5 `shouldBe` "5\n54\n543\n5432\n54321"
