module Kyu7.ArrayLeadersSpec where

import Test.Hspec
import Kyu7.ArrayLeaders

import Test.HUnit (assertEqual)

test ns exp = do
  assertEqual msg exp actual
  where 
    actual = arrayLeaders ns
    msg = "Failed at: " ++ showArgs
    showArgs = show ns
    
-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  describe "Basic Tests" $ do
    it "Positive Values" $ do
      test [1,2,3,4,0] [4]
      test [16,17,4,3,5,2] [17,5,2]
    it "Negative Values" $ do
      test [-1,-29,-26,-2] [-1]
      test [-36,-12,-27] [-36,-12]
    it "Mixed Values" $ do
      test [5,-2,2] [5,2]
      test [0,-1,-29,3,2] [0,-1,3,2]

-- the following line is optional for 8.2
main = hspec spec
