module Kyu7.TetrisSpec where

import Test.Hspec
import Kyu7.Tetris

spec :: Spec
spec = do
  describe "Tetris scroring system" $ do
    it "Basic tests" $ do
      score [0, 1, 2, 3, 4] `shouldBe` 1640
      score [0, 1, 1, 3, 0, 2, 1, 2] `shouldBe` 620
      score [2, 0, 4, 2, 2, 3, 0, 0, 3, 3] `shouldBe` 3300
    it "Special tests" $ do
      score [0] `shouldBe` 0
      score [] `shouldBe` 0
