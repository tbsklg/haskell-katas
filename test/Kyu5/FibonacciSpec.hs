module Kyu5.FibonacciSpec where

import Kyu5.Fibonacci
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  it "Fixed tests" $ do
    fibonacci 70 `shouldBe` 190392490709135
    fibonacci 60 `shouldBe` 1548008755920
    fibonacci 50 `shouldBe` 12586269025

-- the following line is optional for 8.2
main = hspec spec
