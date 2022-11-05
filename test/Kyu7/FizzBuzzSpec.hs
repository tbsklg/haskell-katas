module Kyu7.FizzBuzzSpec where

import Kyu7.FizzBuzz (fizzbuzz)
import Test.Hspec

spec :: Spec
spec = do
  describe "Fizzbuzz" $ do
    it "Should fizzify 10 numbers correctly" $ do
      let expected = ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz"]
      fizzbuzz 10 `shouldBe` expected
