module Kyu7.PrimeSpec where

import Kyu7.Prime
import Test.Hspec

spec :: Spec
spec = describe "Prime" $ do
  it "should check number is prime" $ do
    isPrime 0 `shouldBe` False
    isPrime 1 `shouldBe` False
    isPrime 2 `shouldBe` True
    isPrime 11 `shouldBe` True
    isPrime 12 `shouldBe` False
