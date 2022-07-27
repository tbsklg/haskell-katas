module Kyu5.AnagramSpec where

import Kyu5.Anagram (anagrams)
import Test.Hspec

spec :: Spec
spec = do
  describe "anagrams" $ do
    it "should work on some easy examples" $ do
      anagrams "abba"  ["aabb", "abcd", "bbaa", "dada"] `shouldBe` ["aabb", "bbaa"]
      anagrams "laser" ["lazing", "lazy",  "lacer"] `shouldBe` []
