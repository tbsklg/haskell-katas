module Kyu6.LikesSpec where

import Kyu6.Likes
import Test.Hspec

spec :: Spec
spec = do
  describe "Static tests" $ do
    it "Static test: empty" $ likes [] `shouldBe` "no one likes this"
    it "Static test: 1 name" $ likes ["Peter"] `shouldBe` "Peter likes this"
    it "Static test: 2 names" $ likes ["Jacob", "Alex"] `shouldBe` "Jacob and Alex like this"
    it "Static test: 3 names" $ likes ["Max", "John", "Mark"] `shouldBe` "Max, John and Mark like this"
    it "Static test: 4 names" $ likes ["Alex", "Jacob", "Mark", "Max"] `shouldBe` "Alex, Jacob and 2 others like this"
