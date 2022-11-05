module Kyu7.BinaryGCDBitCountSpec where

import Kyu7.BinaryGCDBitCount
import Test.HUnit (assertEqual)
import Test.Hspec

myTest m n exp = do
  print $ "Looking for: " ++ show exp
  assertEqual msg exp actual
  where
    actual = binaryGCD m n
    msg = "Failed at: " ++ showArgs
    showArgs = show m ++ show n

spec :: Spec
spec = do
  it "Fixed cases" $ do
    myTest 300 45 4
    myTest 0 0 0
    myTest 100000 10000000 6

-- the following line is optional for 8.2
main = hspec spec
