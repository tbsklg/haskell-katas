module Kyu7.NameCappingSpec where

import Kyu7.NameCapping (capMe)
import Test.Hspec

spec :: Spec
spec = do
  describe "capMe" $ do
    it "should work on an empty list" $ do
      capMe [] `shouldBe` []

    it "should work on empty strings " $ do
      capMe [""] `shouldBe` [""]

    it "should return a list of capitalized names if lowercase are given" $ do
      capMe ["jo", "nelson", "jurie"] `shouldBe` ["Jo", "Nelson", "Jurie"]
      capMe ["ralph"] `shouldBe` ["Ralph"]

    it "should return a list of capitalized names if UPPERCASE are given" $ do
      capMe ["JO", "NELSON", "JURIE"] `shouldBe` ["Jo", "Nelson", "Jurie"]
      capMe ["RALPH"] `shouldBe` ["Ralph"]
