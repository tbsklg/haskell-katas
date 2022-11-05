module Kyu7.FoldingSpec where

import Kyu7.Folding
import Test.HUnit (assertEqual)
import Test.Hspec

myTest a b exp = do
  --  print $ "Looking for: " ++ show exp
  assertEqual msg exp actual
  where
    actual = folding a b
    msg = "Failed at: " ++ showArgs
    showArgs = show (a, b)

spec :: Spec
spec = do
  it "Basic Tests" $ do
    myTest 2 1 2
    myTest 10 7 6
    myTest 3 1 3
    myTest 4 1 4
    myTest 3 2 3
    myTest 4 2 2
    myTest 1000 700 6
    myTest 1000 999 1000

-- the following line is optional for 8.2
main = hspec spec
