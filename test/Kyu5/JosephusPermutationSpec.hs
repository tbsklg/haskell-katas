module Kyu5.JosephusPermutationSpec where

import Kyu5.JosephusPermutation (josephus)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "josephus" $ do
    it "works with integers" $ do
      josephus [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] 1 `shouldBe` [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
      josephus [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] 2 `shouldBe` [2, 4, 6, 8, 10, 3, 7, 1, 9, 5]

    it "works with strings" $ do
      josephus "CodeWars" 4 `shouldBe` "esWoCdra"
