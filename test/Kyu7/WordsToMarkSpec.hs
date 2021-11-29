module Kyu7.WordsToMarkSpec (spec) where

import Test.Hspec
import Kyu7.WordsToMark (wordsToMarks)

spec :: Spec
spec = do
  it "basic tests" $ do
    wordsToMarks "attitude" `shouldBe` 100
    wordsToMarks "friends" `shouldBe` 75
    wordsToMarks "family" `shouldBe` 66
    wordsToMarks "selfness" `shouldBe` 99
    wordsToMarks "knowledge" `shouldBe` 96
