module Kyu7.ElevatorDistanceSpec (spec) where

import Kyu7.ElevatorDistance (elevatorDistance)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    elevatorDistance [5, 2, 8] `shouldBe` 9
    elevatorDistance [1, 2, 3] `shouldBe` 2
    elevatorDistance [7, 1, 7, 1] `shouldBe` 18
