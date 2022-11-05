module Kyu7.PalindromeSpec where

import Kyu7.Palindrome
import Test.Hspec

spec :: Spec
spec = do
  it "finds the palindromes" $ do
    palindrome 1221 `shouldBe` Just True
    palindrome 110011 `shouldBe` Just True
    palindrome 1456009006541 `shouldBe` Just True
    palindrome 123322 `shouldBe` Just False
    palindrome 1 `shouldBe` Just True
    palindrome 152 `shouldBe` Just False
    palindrome 9999 `shouldBe` Just True
    palindrome (-450) `shouldBe` Nothing

-- the following line is optional for 8.2
main = hspec spec
