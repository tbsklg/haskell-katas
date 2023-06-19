module Kyu6.Palindrome2Spec where

import Kyu6.Palindrome2
import Test.Hspec

spec :: Spec
spec = do
  it "finds the palindromes" $ do
    palindrome 6 4 `shouldBe` Just [11, 22, 33, 44]
    palindrome 75 1 `shouldBe` Just [77]
    palindrome 19 3 `shouldBe` Just [22, 33, 44]
    palindrome 101 0 `shouldBe` Just []
    palindrome 101 2 `shouldBe` Just [101, 111]
    palindrome (-4505) 15 `shouldBe` Nothing
