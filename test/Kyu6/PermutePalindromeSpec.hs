module Kyu6.PermutePalindromeSpec where

import Test.QuickCheck
import Test.Hspec
import Test.HUnit (assertEqual)
import Kyu6.PermutePalindrome (permutePalindrome)

spec :: Spec
spec = do
    describe "example tests" $ do
      it "simple tests" $ do
        assertEqual "palindrome \"madam\"" True $ permutePalindrome "madam" 
        assertEqual "palindrome \"adamm\"" True $ permutePalindrome "adamm" 
        assertEqual "palindrome \"junk\"" False $ permutePalindrome "junk" 
        assertEqual "palindrome \"a\"" True $ permutePalindrome "a" 
        assertEqual "palindrome \"aa\"" True $ permutePalindrome "aa" 
        assertEqual "palindrome \"aaa\"" True $ permutePalindrome "aaa" 
        assertEqual "palindrome \"baa\"" True $ permutePalindrome "baa" 
        assertEqual "palindrome \"aab\"" True $ permutePalindrome "aab" 
        assertEqual "palindrome \"baabcd\"" False $ permutePalindrome "baabcd" 
        assertEqual "palindrome \"racecars\"" False $ permutePalindrome "racecars" 
        assertEqual "palindrome \"abcdefghba\"" False $ permutePalindrome "abcdefghba" 
        assertEqual "palindrome \"\"" True $ permutePalindrome ""

