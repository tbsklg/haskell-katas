module Kyu7.GCDSpec where

import qualified Kyu7.GCD as G
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "gcd" $ do
    context "correct values" $ do
      it "should work for some examples" $ do
        G.gcd 30 12 `shouldBe` 6
        G.gcd 8 9 `shouldBe` 1
        G.gcd 1 1 `shouldBe` 1
      it "should work for random values" $ do
        gcd_prop small

      it "should work for large random values" $ do
        gcd_prop large
  where
    small, large :: Gen Integer
    small = choose (1, 10 ^ 500)
    large = choose (10 ^ 1000, 10 ^ 5000)
    gcd_prop gen = property $
      forAll gen $ \x ->
        forAll gen $ \y ->
          G.gcd x y `shouldBe` gcd x y
