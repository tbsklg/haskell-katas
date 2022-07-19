module Kyu7.FindABSpec where

import Test.Hspec
import Kyu7.FindAB

import Test.HUnit (assertEqual)

myTest ns c exp = do
  assertEqual msg exp actual
  where 
    actual = findAB ns c
    msg = "Failed at: " ++ showArgs
    showArgs = show (ns,c)
    
spec :: Spec
spec = do
  it "Fixed " $ do
    myTest [1,2,3]                  3 $ Just (1,3)
    myTest [1,2,3]                  6 $ Just (2,3)
    myTest [1,2,3]                  7 Nothing
    myTest [1,2,3,6]                6 $ Just (1,6)
    myTest [1,2,3,4,5,6]           15 $ Just (3,5)
    myTest [0,0,2]                  4 Nothing
    myTest [0,0,2,2]                4 $ Just (2,2)
    myTest [-3,-2,-2,-1,0,1,2,3,4]  4 $ Just (-2,-2)
    myTest [-3,-2,-2,-1,0,1,2,3,4]  0 $ Just (-3, 0)
    myTest [-3,-2,-1,0,1,2,3,4]     4 $ Just ( 1, 4)


-- the following line is optional for 8.2
main = hspec spec
