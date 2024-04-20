module Kyu6.PrimeNumbersSpec where

import Kyu6.PrimeNumbers
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "The getPrimes function" $ do
    it "should work for some examples" $ do
      getPrimes 1 `shouldBe` [2]
      getPrimes 2 `shouldBe` [2, 3]
      getPrimes 3 `shouldBe` [2, 3, 5]
