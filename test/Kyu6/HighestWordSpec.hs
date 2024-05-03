module Kyu6.HighestWordSpec where

import Kyu6.HighestWord
import Test.Hspec

spec :: Spec
spec = do
  describe "Sample test" $ do
    it "man i need a taxi up to ubud" $ do
      high "man i need a taxi up to ubud" `shouldBe` "taxi"
    it "what time are we climbing up the volcano" $ do
      high "what time are we climbing up the volcano" `shouldBe` "volcano"
    it "take me to semynak" $ do
      high "take me to semynak" `shouldBe` "semynak"
    it "massage yes massage yes massage" $ do
      high "massage yes massage yes massage" `shouldBe` "massage"
    it "take two bintang and a dance please" $ do
      high "take two bintang and a dance please" `shouldBe` "bintang"
    it "aa b" $ do
      high "aa b" `shouldBe` "aa"
    it "b aa" $ do
      high "b aa" `shouldBe` "b"
    it "bb d" $ do
      high "bb d" `shouldBe` "bb"
    it "d bb" $ do
      high "d bb" `shouldBe` "d"
    it "aaa b" $ do
      high "aaa b" `shouldBe` "aaa"
