module Kyu7.MostValuedSpec where

import Kyu7.MostValued
import Test.Hspec

spec = do
  describe "Most Valuable Character" $ do
    it "Basic tests" $ do
      solve "a" `shouldBe` 'a'
      solve "aa" `shouldBe` 'a'
      solve "bcd" `shouldBe` 'b'
      solve "axyzxyz" `shouldBe` 'x'
      solve "aabccc" `shouldBe` 'c'
