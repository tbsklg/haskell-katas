module Kyu6.RobotWalkSpec (spec) where

import Kyu6.RobotWalk (robotWalk)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    robotWalk [4, 4, 3, 2, 2, 3] `shouldBe` True
    robotWalk [7, 5, 4, 5, 2, 3] `shouldBe` True
    robotWalk [10, 3, 10, 2, 5, 1, 2] `shouldBe` False
    robotWalk [11, 8, 6, 6, 4, 3, 7, 2, 1] `shouldBe` True
    robotWalk [5, 5, 5, 5] `shouldBe` True
    robotWalk [9348, 2188, 9348] `shouldBe` False
