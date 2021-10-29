module Kyu7.ConsecutiveLettersSpec where

import Kyu7.ConsecutiveLetters
import Test.Hspec

spec = do
  describe "Consecutive letters" $ do
    it "Basic tests" $ do
      solve "abc" `shouldBe` True
      solve "abd" `shouldBe` False
      solve "dabc" `shouldBe` True
      solve "abbc" `shouldBe` False
      solve "v" `shouldBe` True
