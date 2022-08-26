module Kyu7.PointDistanceSpec where

import Test.Hspec
import Kyu7.PointDistance (distanceBetweenPoints, Point (..))

spec :: Spec
spec = do
  describe "Distances" $ do
    it "same point" $ do
      distanceBetweenPoints (Point 1 3 5) (Point 1 3 5) `shouldBe` 0
    it "different simple points" $ do
      distanceBetweenPoints (Point 1 3 6) (Point 4 3 2) `shouldBe` 5.0
    it "different hard points" $ do
      distanceBetweenPoints (Point (-10.2) 12.5 8.4) (Point 0.3 14.7 (-2.8)) `shouldBe` 15.509029
