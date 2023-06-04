module Kyu6.FibonacciSpec where

import Test.Hspec
import Kyu6.Fibonacci

spec :: Spec
spec = do
  it "finds the fibs" $ do
    fib 1 `shouldBe` 0
    fib 2 `shouldBe` 1
    fib 3 `shouldBe` 1
    fib 4 `shouldBe` 2
    fib 5 `shouldBe` 3
    fib 10 `shouldBe` 34
    fib 15 `shouldBe` 377
    fib 20 `shouldBe` 4181
    fib 25 `shouldBe` 46368
    fib 30 `shouldBe` 514229
  it "finds the big fibs" $ do
    fib 35 `shouldBe` 5702887
    fib 40 `shouldBe` 63245986
    fib 50 `shouldBe` 7778742049
    fib 55 `shouldBe` 86267571272
    fib 60 `shouldBe` 956722026041
    fib 65 `shouldBe` 10610209857723
    fib 70 `shouldBe` 117669030460994
    fib 75 `shouldBe` 1304969544928657

