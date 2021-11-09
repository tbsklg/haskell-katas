module Kyu7.SortBySpec where

import Kyu7.SortBy
import Test.Hspec

spec :: Spec
spec = do
  describe "sorts a string into a list of words by the last character" $ do
    it "a few fixed cases" $ do
      last' "man i need a taxi up to ubud" `shouldBe` ["a", "need", "ubud", "i", "taxi", "man", "to", "up"]
      last' "what time are we climbing up the volcano" `shouldBe` ["time", "are", "we", "the", "climbing", "volcano", "up", "what"]
      last' "take me to semynak" `shouldBe` ["take", "me", "semynak", "to"]
      last' "massage yes massage yes massage" `shouldBe` ["massage", "massage", "massage", "yes", "yes"]
      last' "take bintang and a dance please" `shouldBe` ["a", "and", "take", "dance", "please", "bintang"]
