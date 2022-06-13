module Kyu7.PowerOfFourSpec where

import Kyu7.PowerOfFour (isPowerOf4)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "isPowerOf4" $ do
    it "should work for some examples" $ do
      isPowerOf4 1024 `shouldBe` True
      isPowerOf4 102 `shouldBe` False
      isPowerOf4 64 `shouldBe` True
    it "should work for random powers of four" $ do
      property $
        forAll (arbitrary `suchThat` (>= 0)) $ \x ->
          isPowerOf4 (4 ^ (x :: Int)) `shouldBe` True
    it "should work for random non powers of four" $ do
      property $
        forAll (arbitrary `suchThat` (>= 0)) $ \x ->
          isPowerOf4 ((4 ^ (x :: Int)) + 1) `shouldBe` False
