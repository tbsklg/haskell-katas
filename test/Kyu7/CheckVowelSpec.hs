module Kyu7.CheckVowelSpec where

import Kyu7.CheckVowel
import Test.Hspec

spec :: Spec
spec = do
  describe "Check Vowel" $ do
    it "Basic tests" $ do
      checkVowel "cat" 1 `shouldBe` True
      checkVowel "cat" 0 `shouldBe` False
      checkVowel "cat" 4 `shouldBe` False
      checkVowel "Amanda" (-2) `shouldBe` False
      checkVowel "Amanda" 0 `shouldBe` True
      checkVowel "Amanda" 2 `shouldBe` True
