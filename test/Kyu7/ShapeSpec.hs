module Kyu7.ShapeSpec where

import Test.Hspec
import Kyu7.Shape

import Test.HUnit (assertEqual)

test n exp = do
  print $ "Looking for: " ++ show exp
  assertEqual msg exp actual
  where 
    actual = shapeArea n
    msg = "Failed at: " ++ showArgs
    showArgs = show n
    
    
-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "Fixed" $ do
    test 2 5
    test 3 13
    test 1 1
    test 5 41

-- the following line is optional for 8.2
main = hspec spec