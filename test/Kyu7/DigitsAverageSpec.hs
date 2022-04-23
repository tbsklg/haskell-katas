module Kyu7.DigitsAverageSpec where

import Test.Hspec
import Kyu7.DigitsAverage

import Test.HUnit (assertEqual)

myTest n exp = do
  assertEqual msg exp actual
  where 
    actual = digitsAverage n
    msg = "Failed at: " ++ showArgs
    showArgs = show n
    
-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "Fixed tests" $ do
    myTest 268  6
    myTest 246  4
    myTest 89   9
    myTest 2    2
    myTest 245  4
    myTest 345  5
    myTest 346  5
  
-- the following line is optional for 8.2
main = hspec spec
