module Kyu7.LengthRecursivelySpec where

import Kyu7.LengthRecursively

import Test.QuickCheck
import Test.Hspec

spec :: Spec
spec = do
  describe "The lenR function" $ do
    it "should work for some examples" $ do
      lenR [] `shouldBe` 0
      lenR [1] `shouldBe` 1
