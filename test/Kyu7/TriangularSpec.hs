module Kyu7.TriangularSpec where

import Kyu7.Triangular (triangular)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "triangular" $ do
    it "should be equal to one" $ do
      triangular 1 `shouldBe` 1
    it "should be equal to three" $ do
      triangular 2 `shouldBe` 3
    it "should be equal to 5050" $ do
      triangular 100 `shouldBe` 5050
    it "should handle non-positive input" $ do
      property $ \x ->
        triangular (negate . abs $ x) == 0
