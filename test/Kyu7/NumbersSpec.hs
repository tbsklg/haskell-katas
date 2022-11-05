module Kyu7.NumbersSpec (spec) where

import Kyu7.Numbers (isTriangular)
import Test.Hspec
import Test.QuickCheck

main = hspec spec

spec = do
  describe "isTriangular" $ do
    it "returns True when t is a triangular number" $ do
      isTriangular 1 `shouldBe` True
      isTriangular 3 `shouldBe` True
      isTriangular 6 `shouldBe` True
      isTriangular 10 `shouldBe` True
      isTriangular 15 `shouldBe` True
      isTriangular 21 `shouldBe` True
      isTriangular 28 `shouldBe` True

    it "returns False t is not a triangular number" $ do
      isTriangular 2 `shouldBe` False
      isTriangular 7 `shouldBe` False
      isTriangular 14 `shouldBe` False
      isTriangular 27 `shouldBe` False

    it "returns True for random triangular numbers" $
      property $
        forAll (fmap (\n -> n * (n + 1) `div` 2) (choose (1, 10000))) $ \t ->
          isTriangular t `shouldBe` True
