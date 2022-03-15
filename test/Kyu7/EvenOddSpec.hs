module Kyu7.EvenOddSpec where

import Kyu7.EvenOdd
import Test.Hspec

spec = do
  describe "Even Odd disparity" $ do
    it "Basic tests" $ do
      solve ["0","1","2","3"] `shouldBe` 0
      solve ["0","1","2","3","a","b"] `shouldBe` 0
      solve ["0","15","z","16","m","13", "14","c", "9", "10", "13","u", "4", "3"] `shouldBe` 0
      solve ["13", "6", "8", "15", "4", "8", "13"] `shouldBe` 1
      solve ["1","a", "17", "8","e", "3","i", "12", "1"] `shouldBe` -2
      solve ["5", "15", "16", "10", "6", "4", "16", "t", "13", "n", "14", "k", "n", "0", "q", "d", "7", "9"] `shouldBe` 2
