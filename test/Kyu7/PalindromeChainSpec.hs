module Kyu7.PalindromeChainSpec where

import Kyu7.PalindromeChain (palindromeChainLength)
import Test.Hspec

spec :: Spec
spec = do
  describe "palindromeChainLength" $ do
    it "should work for 87 -> 4" $ do
      palindromeChainLength 87 `shouldBe` 4
