module Kyu6.PalindromeSpec where

import Test.Hspec
import Kyu6.Palindrome

spec :: Spec
spec = do
  it "checks for a hidden palindrome" $ do
    palindrome 2          `shouldBe`  Just False
    palindrome 123322367  `shouldBe`  Just True
    palindrome 1215       `shouldBe`  Just True
    palindrome 1010156    `shouldBe`  Just True
    palindrome 15620102   `shouldBe`  Just True
    palindrome 1145       `shouldBe`  Just True
    palindrome 4511       `shouldBe`  Just True
    palindrome 100343     `shouldBe`  Just True
    palindrome 1551       `shouldBe`  Just True
    palindrome 1451       `shouldBe`  Just False
    palindrome 13598      `shouldBe`  Just False
    palindrome (-4505)    `shouldBe`  Nothing
