module Kyu7.ClonewarsSpec where

import Test.Hspec
import Kyu7.Clonewars

import Test.HUnit (assertEqual)

myTest k exp = do
  assertEqual msg exp actual
  where 
    actual = clonewars k
    msg = "Failed at: " ++ showArgs
    showArgs = show k
    
spec :: Spec
spec = do
  it "Basic tests" $ do
    myTest 0  (1, 0)
    myTest 1  (1, 1)
    myTest 5  (16, 57)
    myTest 10 (512, 2036)
  
-- the following line is optional for 8.2
main = hspec spec
