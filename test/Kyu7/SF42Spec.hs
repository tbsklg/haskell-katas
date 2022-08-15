module Kyu7.SF42Spec where

import Test.Hspec
import Kyu7.SF42

import Test.HUnit (assertEqual)

myTest ns ms exp = do
  assertEqual msg exp actual
  where 
    actual = areSimilar ns ms
    msg = "Failed at: " ++ showArgs
    showArgs = show (ns,ms)
    
spec :: Spec
spec = do
  it "It should works for basic tests." $ do
    myTest [1, 2, 3] [1, 2, 3]  True
    myTest [1, 2, 3] [2, 1, 3]  True
    myTest [1, 2, 2] [2, 1, 1]  False
    myTest [1, 2, 3] [1, 10, 2] False
    myTest [2, 3, 1] [1, 3, 2]  True
    myTest [1, 1, 2] [1, 2, 2]  False
  
-- the following line is optional for 8.2
main = hspec spec
