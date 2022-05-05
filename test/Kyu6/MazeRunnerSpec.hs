module Kyu6.MazeRunnerSpec where

import Kyu6.MazeRunner
import Test.Hspec

maze :: [[Int]]
maze =
  [ [1, 1, 1, 1, 1, 1, 1],
    [1, 0, 0, 0, 0, 0, 3],
    [1, 0, 1, 0, 1, 0, 1],
    [0, 0, 1, 0, 0, 0, 1],
    [1, 0, 1, 0, 1, 0, 1],
    [1, 0, 0, 0, 0, 0, 1],
    [1, 2, 1, 0, 1, 0, 1]
  ]

spec :: Spec
spec = do
  describe "The mazeRunner function" $ do
    describe "should return Finish" $ do
      it "Example #1" $
        mazeRunner maze ['N', 'N', 'N', 'N', 'N', 'E', 'E', 'E', 'E', 'E'] `shouldBe` "Finish"
      it "Example #2" $
        mazeRunner maze ['N', 'N', 'N', 'N', 'N', 'E', 'E', 'S', 'S', 'E', 'E', 'N', 'N', 'E'] `shouldBe` "Finish"
      it "Example #3" $
        mazeRunner maze ['N', 'N', 'N', 'N', 'N', 'E', 'E', 'E', 'E', 'E', 'W', 'W'] `shouldBe` "Finish"

    describe "should return Dead" $ do
      it "Example #4" $
        mazeRunner maze ['N', 'N', 'N', 'W', 'W'] `shouldBe` "Dead"
      it "Example #5" $
        mazeRunner maze ['N', 'N', 'N', 'N', 'N', 'E', 'E', 'S', 'S', 'S', 'S', 'S', 'S'] `shouldBe` "Dead"

    describe "should return Lost" $ do
      it "Example #6" $
        mazeRunner maze ['N', 'E', 'E', 'E', 'E'] `shouldBe` "Lost"

    it "should find start position" $ do
      findStart maze `shouldBe` (6, 1)

    it "should move from position" $ do
      move 'N' (6, 1) `shouldBe` (5, 1)
      move 'S' (6, 1) `shouldBe` (7, 1)
      move 'W' (6, 1) `shouldBe` (6, 0)
      move 'E' (6, 1) `shouldBe` (6, 2)
