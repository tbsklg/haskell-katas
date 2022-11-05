module Kyu7.LockerRunSpec where

import Kyu7.LockerRun
import Test.HUnit (assertEqual)
import Test.Hspec

myTest n exp = do
  assertEqual msg exp actual
  where
    actual = lockerRun n
    msg = "Failed at: " ++ showArgs
    showArgs = show n

spec :: Spec
spec = do
  it "Fixed tests" $ do
    myTest 1 [1]
    myTest 3 [1]
    myTest 4 [1, 4]
    myTest 10 [1, 4, 9]
    myTest 20 [1, 4, 9, 16]

-- the following line is optional for 8.2
main = hspec spec
