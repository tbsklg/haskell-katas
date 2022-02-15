module Kyu7.OddCubedSpec where

import Kyu7.OddCubed
import Test.Hspec

spec :: Spec
spec = do
  describe "Sample test" $ do
    it "First Test" $ do
      (oddCubed [-5, -5, 5, 5]) `shouldBe` 0
  describe "Sample test" $ do
    it "Second Test" $ do
      (oddCubed [1, 2, 3, 4]) `shouldBe` 28
  describe "Sample test" $ do
    it "Empty list" $ do
      (oddCubed []) `shouldBe` 0
