module Kyu7.IsFibonacciSpec (spec) where

import Kyu7.IsFibonacci (isFibo)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    isFibo 1 1 2 `shouldBe` True
    isFibo 1 4 10 `shouldBe` False
    isFibo 4 5 23 `shouldBe` True
    isFibo 100 101 301 `shouldBe` False
