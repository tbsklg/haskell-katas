module Kyu4.DecodeMorseAdvancedSpec where

import Kyu4.DecodeMorseAdvanced (decodeBits, decodeMorse, transmissionRate)
import Test.Hspec

decode = decodeMorse . decodeBits

spec :: Spec
spec = do
  describe "Example tests" $ do
    it "should correctly decode example from description" $ do
      decode "1100110011001100000011000000111111001100111111001111110000000000000011001111110011111100111111000000110011001111110000001111110011001100000011" `shouldBe` "HEY JUDE"
      decode "1" `shouldBe` "E"
      decode "101" `shouldBe` "I"
      decode "10001" `shouldBe` "EE"
      decode "10111" `shouldBe` "A"
      decode "1110111" `shouldBe` "M"
      decode "111" `shouldBe` "E"
      decode "1111111" `shouldBe` "E"
      decode "110011" `shouldBe` "I"
      decode "01110" `shouldBe` "E"

  describe "Calculate transmission rate" $ do
    it "should correctly calculate transmission rate" $ do
      transmissionRate "1" `shouldBe` 1
      transmissionRate "111" `shouldBe` 3
      transmissionRate "111000" `shouldBe` 3
      transmissionRate "111000111" `shouldBe` 3
      transmissionRate "1100110011001100000011000000111111001100111111001111110000000000000011001111110011111100111111000000110011001111110000001111110011001100000011" `shouldBe` 2
      transmissionRate "10001" `shouldBe` 1

  describe "It should decode bits to dots and dashes" $ do
    it "should decode bits" $ do
      decodeBits "1" `shouldBe` "."
      decodeBits "111" `shouldBe` "."
      decodeBits "1100110011001100000011000000111111001100111111001111110000000000000011001111110011111100111111000000110011001111110000001111110011001100000011" `shouldBe` ".... . -.--   .--- ..- -.. ."
