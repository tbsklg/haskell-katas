module Kyu7.SubstringCountSpec where

import Kyu7.SubstringCount
import Test.Hspec

spec :: Spec
spec = do
  describe "Return substring instance count" $ do
    it "Basic tests" $ do
      solution "abcdeb" "b" `shouldBe` 2
      solution "abc" "b" `shouldBe` 1
      solution "abbc" "bb" `shouldBe` 1
