module Kyu7.SumRecursivelySpec where

import Kyu7.SumRecursively
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "The sumR function" $ do
    it "should work for some examples" $ do
      sumR [] `shouldBe` 0
      sumR [1] `shouldBe` 1
      sumR [1, 1, 1] `shouldBe` 3
