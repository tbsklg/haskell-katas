module Kyu7.SumFactorialSpec (spec) where

import Kyu7.SumFactorial
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    sumFactorial [4, 6] `shouldBe` 744
    sumFactorial [5, 4, 1] `shouldBe` 145
