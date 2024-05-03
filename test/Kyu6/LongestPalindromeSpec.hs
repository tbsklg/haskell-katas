module Kyu6.LongestPalindromeSpec where

import Kyu6.LongestPalindrome
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "Longest Palindrome" $ do
    it "The length of the Longest palindrome of a one char string should be 1" $ do
      (longestPalindrome "a") `shouldBe` 1
    it "The length of the Longest palindrome of a 2 identical chars string should be 2" $ do
      (longestPalindrome "aa") `shouldBe` 2
    it "A palindrome at the end of a string should be found" $ do
      (longestPalindrome "baa") `shouldBe` 2
    it "A palindrome at the begining of a string should be found" $ do
      (longestPalindrome "aab") `shouldBe` 2
    it "When multiple palindromes are in a string, the length of the longest one should be returned" $ do
      (longestPalindrome "baablkj12345432133d") `shouldBe` 9
    it "It should work for more examples" $ do
      (longestPalindrome "abcdefghba") `shouldBe` 1
      (longestPalindrome "baablkj12345432133d") `shouldBe` 9
