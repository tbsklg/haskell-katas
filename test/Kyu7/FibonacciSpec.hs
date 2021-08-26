module Kyu7.FibonacciSpec (spec) where

import Kyu7.Fibonacci (fib)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "The fib function" $ do
    it "should work for some examples" $ do
      fib 1 `shouldBe` 1
      fib 2 `shouldBe` 1
      fib 3 `shouldBe` 2
      fib 4 `shouldBe` 3
      fib 5 `shouldBe` 5
