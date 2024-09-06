module Kyu7.MersennePrimesSpec where

import Kyu7.MersennePrimes
import Test.Hspec

spec :: Spec
spec = do
  describe "Mersenne Primes" $ do
    it "should work for some tests" $ do
      validMersenne 3 `shouldBe` True
      validMersenne 12 `shouldBe` False
      validMersenne 7 `shouldBe` True
      validMersenne 21 `shouldBe` False
      validMersenne 49 `shouldBe` False
      validMersenne 13 `shouldBe` True
      validMersenne 221 `shouldBe` False
      validMersenne 127 `shouldBe` True
