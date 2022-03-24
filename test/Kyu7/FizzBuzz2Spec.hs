module Kyu7.FizzBuzz2Spec where

import Kyu7.FizzBuzz2 (fizzbuzz)
import Test.Hspec

spec :: Spec
spec = do
  describe "Fizz Buzz" $ do
    it "should work for these test cases" $ do
      fizzbuzz 20 `shouldBe` [5,2,1]
      fizzbuzz  2 `shouldBe` [0,0,0]
      fizzbuzz 30 `shouldBe` [8,4,1]
      fizzbuzz 300 `shouldBe` [80,40,19]
