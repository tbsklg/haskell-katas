module Kyu7.FindAllOccurencesSpec where

import Kyu7.FindAllOccurences (findAll)
import Test.Hspec

spec = do
  describe "Find All" $ do 
    it "should work for simple tests" $ do
      findAll [6, 9, 3, 4, 3, 82, 11] 3 `shouldBe` [2, 4]
      findAll [10, 16, 20, 6, 14, 11, 20, 2, 17, 16, 14] 16 `shouldBe` [1, 9]
      findAll [20, 20, 10, 13, 15, 2, 7, 2, 20, 3, 18, 2, 3, 2, 16, 10, 9, 9, 7, 5, 15, 5] 20 `shouldBe` [0, 1, 8]
