module Kyu7.ComplexSpec where

import Kyu7.Complex
import Test.Hspec

spec :: Spec
spec = do
  describe "Complex numbers" $ do
    it "can extract the real part" $ do
      real zero `shouldBe` 0
      real one `shouldBe` 1
      real i `shouldBe` 0
      real (Complex 3 4) `shouldBe` 3
    it "can extract the imaginary part" $ do
      imaginary zero `shouldBe` 0
      imaginary one `shouldBe` 0
      imaginary i `shouldBe` 1
      imaginary (Complex 3 4) `shouldBe` 4
    it "can be added" $ do
      zero + one `shouldBe` one
      i + zero `shouldBe` i
      one + i `shouldBe` Complex 1 1
      Complex 2 4 + Complex 3 1 `shouldBe` Complex 5 5
    it "can be multiplied" $ do
      zero * one `shouldBe` zero
      one * i `shouldBe` i
      Complex 2 4 * Complex 3 1 `shouldBe` Complex 2 14

zero = Complex 0 0

one = Complex 1 0

i = Complex 0 1
