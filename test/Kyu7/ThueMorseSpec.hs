module Kyu7.ThueMorseSpec where

import Kyu7.ThueMorse
import Test.HUnit (assertEqual)
import Test.Hspec

test ns exp = do
  print $ "Looking for: " ++ show exp
  assertEqual msg exp actual
  where
    actual = isThueMorse ns
    msg = "Failed at: " ++ showArgs
    showArgs = show ns

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "Fixed" $ do
    test [0, 1, 1, 0, 1] True
    test [0] True
    test [1] False
    test [0, 1, 0, 0] False

-- the following line is optional for 8.2
main = hspec spec
