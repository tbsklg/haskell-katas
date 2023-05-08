module Kyu6.FormatSentenceSpec where

import Kyu6.FormatSentence
import Test.Hspec

spec :: Spec
spec = do
  describe "Format words to sentence" $ do
    it "Basic tests" $ do
      formatWords ["one", "two", "three", "four"] `shouldBe` "one, two, three and four"

      formatWords ["one"] `shouldBe` "one"

      formatWords ["one", "", "three"] `shouldBe` "one and three"

      formatWords ["", ""] `shouldBe` ""

      formatWords ["one", "two", ""] `shouldBe` "one and two"
