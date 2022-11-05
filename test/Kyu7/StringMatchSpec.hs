module Kyu7.StringMatchSpec where

import Kyu7.StringMatch
import Test.Hspec

spec :: Spec
spec = do
  describe "String matchup" $ do
    it "Basic tests" $ do
      solve ["abc", "abc", "xyz", "abcd", "cde"] ["abc", "cde", "uap"] `shouldBe` [2, 1, 0]
      solve ["abc", "xyz", "abc", "xyz", "cde"] ["abc", "cde", "xyz"] `shouldBe` [2, 1, 2]
      solve ["quick", "brown", "fox", "is", "quick"] ["quick", "abc", "fox"] `shouldBe` [2, 0, 1]
