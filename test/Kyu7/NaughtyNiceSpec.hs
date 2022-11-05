module Kyu7.NaughtyNiceSpec where

import Kyu7.NaughtyNice (getNaughtyNames, getNiceNames)
import Test.Hspec

spec :: Spec
spec = do
  describe "getNiceNames" $ do
    it "should work for small examples" $ do
      let naughty = [("xDranik", False)]
          nice = [("Santa", True), ("Warrior reading this kata", True)]
      getNiceNames naughty `shouldBe` []
      getNiceNames nice `shouldBe` ["Santa", "Warrior reading this kata"]

  describe "getNaughtyNames" $ do
    it "should work for small examples" $ do
      let naughty = [("xDranik", False)]
          nice = [("Santa", True), ("Warrior reading this kata", True)]
      getNaughtyNames nice `shouldBe` []
      getNaughtyNames naughty `shouldBe` ["xDranik"]
