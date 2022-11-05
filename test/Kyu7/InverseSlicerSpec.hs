module Kyu7.InverseSlicerSpec where

import Kyu7.InverseSlicer
import Test.HUnit (assertEqual)
import Test.Hspec

myTest as ti di exp = do
  assertEqual msg exp actual
  where
    actual = inverseSlice as ti di
    msg = "Failed at: " ++ showArgs
    showArgs = show (as, ti, di)

spec :: Spec
spec = do
  it "Fixed " $ do
    myTest [12, 14, 63, 72, 55, 24] 2 4 [12, 14, 55, 24]
    myTest [12, 14, 63, 72, 55, 24] 0 3 [72, 55, 24]
    myTest ["Intuition", "is", "a", "poor", "guide", "when", "facing", "probabilistic", "evidence"] 5 13 ["Intuition", "is", "a", "poor", "guide"]
    myTest ([] :: [Int]) 1 4 ([] :: [Int])
    myTest [0, 0, 0, 1, 0] 0 3 [1, 0]

-- the following line is optional for 8.2
main = hspec spec
