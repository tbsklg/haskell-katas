module Kyu7.SF87Spec where

import Kyu7.SF87
import Test.HUnit (assertEqual)
import Test.Hspec

myTest ns exp = do
  assertEqual msg exp actual
  where
    actual = shuffledList ns
    msg = "Failed at: " ++ showArgs
    showArgs = show ns

spec :: Spec
spec = do
  it "Fixed " $ do
    myTest [1, 12, 3, 6, 2] [1, 2, 3, 6]
    myTest [1, -3, -5, 7, 2] [-5, -3, 2, 7]
    myTest [2, -1, 2, 2, -1] [-1, -1, 2, 2]
    myTest [-3, -3] [-3]
    myTest [-3, 0, -3] [-3, 0]

-- the following line is optional for 8.2
main = hspec spec
