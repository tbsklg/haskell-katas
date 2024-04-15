module Kyu7.FromAtoZSpec (spec) where

import Kyu7.FromAtoZ (gimmeTheLetters)
import Test.Hspec

spec :: Spec
spec = do
  it "description example tests" $ do
    gimmeTheLetters "a-z" `shouldBe` "abcdefghijklmnopqrstuvwxyz"
    gimmeTheLetters "h-o" `shouldBe` "hijklmno"
    gimmeTheLetters "Q-Z" `shouldBe` "QRSTUVWXYZ"
    gimmeTheLetters "J-J" `shouldBe` "J"
  it "more example tests" $ do
    gimmeTheLetters "a-b" `shouldBe` "ab"
    gimmeTheLetters "A-A" `shouldBe` "A"
    gimmeTheLetters "g-i" `shouldBe` "ghi"
    gimmeTheLetters "H-I" `shouldBe` "HI"
    gimmeTheLetters "y-z" `shouldBe` "yz"
    gimmeTheLetters "e-k" `shouldBe` "efghijk"
    gimmeTheLetters "a-q" `shouldBe` "abcdefghijklmnopq"
    gimmeTheLetters "F-O" `shouldBe` "FGHIJKLMNO"
