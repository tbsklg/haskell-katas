module Kyu7.FindNextSquareSpec (spec) where

import Kyu7.FindNextSquare (findNextSquare)
import Test.Hspec

spec :: Spec
spec = do
  describe "findNextSquare" $ do
    it "should return the next square for perfect squares" $ do
      findNextSquare 121 `shouldBe` 144
      findNextSquare 625 `shouldBe` 676
      findNextSquare 319225 `shouldBe` 320356
      findNextSquare 15241383936 `shouldBe` 15241630849
    it "should return -1 for numbers which aren't perfect squares" $ do
      findNextSquare 155 `shouldBe` -1
      findNextSquare 342786627 `shouldBe` -1
