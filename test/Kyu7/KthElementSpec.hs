module Kyu7.KthElementSpec where

import Codewars
import Kyu7.KthElement (elementAt)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "elementAt k [1..10]" $ do
    it "should be Just 1" $ elementAt 1 [1 .. 10] `shouldBe` Just 1
    it "should be Just 4" $ elementAt 4 [1 .. 10] `shouldBe` Just 4
    it "should be Just 10" $ elementAt 10 [1 .. 10] `shouldBe` Just 10
    it "should be Nothing" $ elementAt (-1) [1 .. 10] `shouldBe` Nothing
    it "should be Nothing" $ elementAt 0 [1 .. 10] `shouldBe` Nothing
    it "should be Nothing" $ elementAt 11 [1 .. 10] `shouldBe` Nothing
  describe "[1..]" $ do
    it "elementAt k [1..] should be Just k provided k >= 1" $ do
      property $
        forAll (suchThat arbitrary (>= 1)) $
          \k -> elementAt k [1 ..] `shouldBe` Just k
    it "elementAt (k+1) [1..k] should be Nothing provided k >= 1" $ do
      property $
        forAll (suchThat arbitrary (>= 1)) $
          \k -> elementAt (k + 1) [1 .. k] `shouldBe` Nothing
    it "elementAt k [1..] should be Nothing provided k < 1" $ do
      property $
        forAll (suchThat arbitrary (< 1)) $
          \k -> elementAt k [1 ..] `shouldBe` Nothing
