module Kyu7.InfiniteListOfOnesSpec where

import Kyu7.InfiniteListOfOnes
import Test.Hspec

spec :: Spec
spec = do
  describe "Infinite list of 1's tests" $ do
    it "Basic tests" $ do
      take 1 getInfiniteListOfOnes `shouldBe` [1]
      take 2 getInfiniteListOfOnes `shouldBe` [1, 1]
      take 3 getInfiniteListOfOnes `shouldBe` [1, 1, 1]
      take 4 getInfiniteListOfOnes `shouldBe` [1, 1, 1, 1]
      take 5 getInfiniteListOfOnes `shouldBe` [1, 1, 1, 1, 1]
