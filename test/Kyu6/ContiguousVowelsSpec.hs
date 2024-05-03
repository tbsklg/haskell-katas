module Kyu6.ContiguousVowelsSpec (spec) where

import Kyu6.ContiguousVowels (sortByVowels)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    sortByVowels ["aa", "eee", "oo", "iiii"] `shouldBe` ["iiii", "eee", "aa", "oo"]
    sortByVowels ["a", "e", "ii", "ooo", "u"] `shouldBe` ["ooo", "ii", "a", "e", "u"]
    sortByVowels ["ioue", "ee", "uoiea"] `shouldBe` ["uoiea", "ioue", "ee"]
    sortByVowels ["high", "day", "boot"] `shouldBe` ["boot", "high", "day"]
    sortByVowels ["none", "uuu", "Yuuuge!!"] `shouldBe` ["uuu", "Yuuuge!!", "none"]
    sortByVowels ["AIBRH", "", "YOUNG", "GREEEN"] `shouldBe` ["GREEEN", "AIBRH", "YOUNG", ""]
    sortByVowels ["jyn", "joan", "jimmy", "joey"] `shouldBe` ["joan", "joey", "jimmy", "jyn"]
    sortByVowels ["uijijeoj", "lkjlkjww2", "iiutrqy"] `shouldBe` ["iiutrqy", "uijijeoj", "lkjlkjww2"]
    sortByVowels ["how about now", "a beautiful trio of"] `shouldBe` ["a beautiful trio of", "how about now"]
    sortByVowels ["every", "bataux", "is", "waaaay", "loose"] `shouldBe` ["waaaay", "bataux", "loose", "every", "is"]
