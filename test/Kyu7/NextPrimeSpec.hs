module Kyu7.NextPrimeSpec (spec) where

import Kyu7.NextPrime (nextPrime)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "Next Prime" $ do
    it "should work for some tests" $ do
      nextPrime 1 `shouldBe` 2
      nextPrime 2 `shouldBe` 3
      nextPrime 3 `shouldBe` 5
      nextPrime 13 `shouldBe` 17
      nextPrime 181 `shouldBe` 191
      nextPrime 911 `shouldBe` 919
