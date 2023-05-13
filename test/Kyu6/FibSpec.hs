module Kyu6.FibSpec where

import Kyu6.Fib
import Test.Hspec

spec :: Spec
spec = do
  describe "fib" $ do
    it "first is 1" $
      fib 1 `shouldBe` 0
    it "3rd Fibo" $
      fib 3 `shouldBe` 1
    it "16th Fibo" $
      fib 16 `shouldBe` 610
    it "25th Fibo" $
      fib 25 `shouldBe` 46368
