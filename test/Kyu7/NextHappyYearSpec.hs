module Kyu7.NextHappyYearSpec where

import Test.Hspec
import Kyu7.NextHappyYear


import Test.HUnit (assertEqual)

myTest n exp = do
--  print $ "Looking for: " ++ show exp
  assertEqual msg exp actual
  where 
    actual = nextHappyYear n
    msg = "Failed at: " ++ showArgs
    showArgs = show n
    
spec :: Spec
spec = do
  it "Basic tests" $ do
    myTest 1001 1023
    myTest 1123 1203
    myTest 2001 2013
    myTest 2334 2340
    myTest 3331 3401
    myTest 1987 2013
    myTest 5555 5601
    myTest 7712 7801
    myTest 8088 8091
    myTest 8999 9012

-- the following line is optional for 8.2
main = hspec spec
