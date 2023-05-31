module Kyu6.EvenFibonacciSumSpec (spec) where

import Kyu6.EvenFibonacciSum (fibSum)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    fibSum 0 `shouldBe` 0
    fibSum 33 `shouldBe` 10
    fibSum 25997544 `shouldBe` 19544084
