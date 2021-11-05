module Kyu7.GridMapSpec (spec) where

import Kyu7.GridMap (gridMap)
import Data.Char
import Test.Hspec
import Test.QuickCheck

numberGrid = [[1,2,3,4],
              [5,6,7,8,9],
              [0,2,4]]

charGrid = ["Hello", "World!"]

spec :: Spec
spec = do
  describe "some simple tests" $ do
    it "add 1" $ do
      gridMap (+1) numberGrid `shouldBe` [[2,3,4,5],[6,7,8,9,10],[1,3,5]]
    it "mul 2" $ do
      gridMap (*2) numberGrid `shouldBe` [[2,4,6,8],[10,12,14,16,18],[0,4,8]]
    it "pow 2" $ do
      gridMap (^2) numberGrid `shouldBe` [[1,4,9,16],[25,36,49,64,81],[0,4,16]]

  describe "some Char arrays" $ do
    it "toUpper" $ do
      gridMap toUpper charGrid `shouldBe` ["HELLO", "WORLD!"]
    it "toLower" $ do
      gridMap toLower charGrid `shouldBe` ["hello", "world!"]
    it "succ" $ do
      gridMap succ charGrid `shouldBe` ["Ifmmp","Xpsme\""]
