module Kyu7.ToLoverCaseSpec where

import Test.HUnit (assertEqual)

import Test.Hspec
import Kyu7.ToLoverCase


myTest s exp = do
  assertEqual msg exp actual
  where 
    actual = toLoverCase s
    msg = "Failed at: " ++ showArgs
    showArgs = s
    
spec :: Spec
spec = do
  it "Basic Tests" $ do
    myTest "LOVE" "EVOL" 
    myTest "love" "EVOL" 
    myTest "abcd" "LOVE" 
    myTest "ebcd" "LOVE" 
    myTest "Hello World!" "ELEEV VVOEE!"
    myTest "jrvz," "OOOO,"

-- the following line is optional for 8.2
main = hspec spec
