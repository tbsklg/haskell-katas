module Kyu7.PigLatinSpec where

import Kyu7.PigLatin
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
      pigLatin "hello" `shouldBe` "ellohay"
      pigLatin "hi" `shouldBe` "hi"
