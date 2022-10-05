module Kyu7.IsItLetterSpec where

import Kyu7.IsItLetter
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "The isItLetter function" $ do
    it "should work for some examples" $ do
      isItLetter 'a' `shouldBe` True
      isItLetter '1' `shouldBe` False
