module Kyu7.DivisibleSpec where

import Kyu7.Divisible (isDivisible)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "isDivisible" $ do
    it "should work for some examples" $ do
      isDivisible 3 [1, 3] `shouldBe` True
      isDivisible 12 [2] `shouldBe` True
      isDivisible 100 [5, 4, 10, 25, 20] `shouldBe` True
      isDivisible 12 [7] `shouldBe` False

    it "should work for arbitrary divisible numbers" $
      property $ \xs' ->
        let xs = map getNonZero xs'
         in isDivisible (product xs :: Integer) xs `shouldBe` True
