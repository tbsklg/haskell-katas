module Kyu5.TransformToPrimeSpec where

import Kyu5.TransformToPrime
import Test.Hspec

spec :: Spec
spec = do
  describe "Short list" $ do
    it "Short list #1" $ do
      (minimumNumber [3, 1, 2]) `shouldBe` (1 :: Integer)
    it "Short list #2" $ do
      (minimumNumber [5, 2]) `shouldBe` (0 :: Integer)
    it "Short list #3" $ do
      (minimumNumber [1, 1, 1]) `shouldBe` (0 :: Integer)
  describe "Larger list" $ do
    it "Larger list #1" $ do
      (minimumNumber [2, 12, 8, 4, 6]) `shouldBe` (5 :: Integer)
    it "Larger list #2" $ do
      (minimumNumber [50, 39, 49, 6, 17, 28]) `shouldBe` (2 :: Integer)
