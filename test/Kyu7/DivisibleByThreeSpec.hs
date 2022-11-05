module Kyu7.DivisibleByThreeSpec where

import Kyu7.DivisibleByThree
import Test.HUnit (assertEqual)
import Test.Hspec

myTest s exp = do
  assertEqual msg exp actual
  where
    actual = divisibleByThree s
    msg = "Failed at: " ++ showArgs
    showArgs = s

spec :: Spec
spec = do
  it "Fixed tests " $ do
    myTest "123" True
    myTest "19254" True
    myTest "1" False
    myTest "963210456" True
    myTest "010110101011" False
    myTest "9" True
    myTest "6363" True
    myTest "10987654321" False
    myTest "9876543211234567890009" True
    myTest "9876543211234567890002" False

-- the following line is optional for 8.2
main = hspec spec
