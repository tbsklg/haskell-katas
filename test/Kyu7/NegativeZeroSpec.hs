module Kyu7.NegativeZeroSpec where

import Test.Hspec
import Kyu7.NegativeZero
import Test.QuickCheck

spec :: Spec
spec = do
    describe "fixed cases" $ do
        it "-0 is true" $ do
            (negativeZero (-0)) `shouldBe` True
        it "+0 is false" $ do
            (negativeZero 0) `shouldBe` False
        it "-1 should be false" $ do
            (negativeZero (-1)) `shouldBe` False
        it "1 should be false" $ do
            (negativeZero 1) `shouldBe` False

main = hspec spec
