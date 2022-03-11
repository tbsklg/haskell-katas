module Kyu7.PuzzleSpec where

import Kyu7.Puzzle (testit)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "testit" $ do
    it "a=[0] b=[1] => [0,1]" $ testit [0] [1] `shouldBe` [0,1]
    it "a=[1,2] b=[3,4] => [1,2,3,4]" $ testit [1,2] [3,4] `shouldBe` [1,2,3,4]
    it "a=[1] b=[2,3,4] => [1,2,3,4]" $ testit [1] [2,3,4] `shouldBe` [1,2,3,4]
    it "a=[1,2,3] b=[4] => [1,2,3,4]" $ testit [1,2,3] [4] `shouldBe` [1,2,3,4]
    it "a=[1,2] b=[1,2] => [1,1,2,2]" $ testit [1,2] [1,2] `shouldBe` [1,1,2,2]
    -- submit for more
