module Kyu7.SingleCharPalinsSpec where

import Kyu7.SingleCharPalins
import Test.Hspec

spec :: Spec
spec = do
  describe "Single Character Palindromes II" $ do
    it "Basic tests" $ do
      solve "abba" `shouldBe` False
      solve "abbaa" `shouldBe` True
      solve "abbx" `shouldBe` True
      solve "aa" `shouldBe` False
      solve "ab" `shouldBe` True
      solve "abcba" `shouldBe` True
