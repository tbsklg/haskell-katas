module Kyu7.LeetSpeakSpec where

import Kyu7.LeetSpeak
import Test.QuickCheck
import Test.Hspec

spec :: Spec
spec = do
  describe "LeetSpeak tests" $ do
    it "Basic tests" $ do
      toLeetSpeak "LEET" `shouldBe` "1337"
      toLeetSpeak "CODEWARS" `shouldBe` "(0D3W@R$"
      toLeetSpeak "HELLO WORLD" `shouldBe` "#3110 W0R1D"
      toLeetSpeak "LOREM IPSUM DOLOR SIT AMET" `shouldBe` "10R3M !P$UM D010R $!7 @M37"
      toLeetSpeak "THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG" `shouldBe` "7#3 QU!(K 8R0WN F0X JUMP$ 0V3R 7#3 1@2Y D06"