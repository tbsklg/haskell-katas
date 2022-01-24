module Kyu7.RemoveSmallestSpec where

import Kyu7.RemoveSmallest (removeSmallest)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "removeSmallest" $ do
    it "works for the examples" $ do
      removeSmallest [1,2,3,4,5] `shouldBe` [2,3,4,5]
      removeSmallest [5,3,2,1,4] `shouldBe` [5,3,2,4]
      removeSmallest [2, 2, 1, 2, 1] `shouldBe` [2, 2, 2, 1]
      removeSmallest [] `shouldBe` ([] :: [Int])
    
    it "returns [] if the list has only one element" $ property $ \x ->
      removeSmallest [x] `shouldBe` ([] :: [Int])
      
    it "returns a list that misses only one element" $ property $ \(NonEmpty xs) ->
      let l = length (xs :: [Int])
      in length (removeSmallest xs) `shouldBe` l - 1  