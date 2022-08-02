module Kyu7.DistanceSpec where

import Kyu7.Distance (distancesFromAverage)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  it "should calculate distancesFromAverage" $ do
    distancesFromAverage [55, 95, 62, 36, 48] `shouldBe` [4.2, -35.8, -2.8, 23.2, 11.2]
    distancesFromAverage [1, 1, 1, 1, 1] `shouldBe` [0, 0, 0, 0, 0]
    distancesFromAverage [1, -1, 1, -1, 1, -1] `shouldBe` [-1.0, 1.0, -1.0, 1.0, -1.0, 1.0]
    distancesFromAverage [1, -1, 1, -1, 1] `shouldBe` [-0.8, 1.2, -0.8, 1.2, -0.8]
    distancesFromAverage [2, -2] `shouldBe` [-2.0, 2.0]
    distancesFromAverage [1] `shouldBe` [0]
    distancesFromAverage [123, -65, 32432, -353, -534] `shouldBe` [6197.6, 6385.6, -26111.4, 6673.6, 6854.6]
    distancesFromAverage [0 .. 100] `shouldBe` [50, 49 .. -50]
