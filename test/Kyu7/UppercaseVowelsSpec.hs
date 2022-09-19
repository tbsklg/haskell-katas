module Kyu7.UppercaseVowelsSpec where

import Kyu7.UppercaseVowels
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "The uppercaseVowels function" $ do
    it "should work for some examples" $ do
      uppercaseVowels "x" `shouldBe` "x"
      uppercaseVowels "a" `shouldBe` "A"