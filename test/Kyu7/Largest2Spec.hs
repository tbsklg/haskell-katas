module Kyu7.Largest2Spec where

import Kyu7.Largest2
import Test.HUnit (assertEqual)
import Test.Hspec

myTest n exp = do
  assertEqual msg exp actual
  where
    actual = maxNumber n
    msg = "Failed at: " ++ showArgs
    showArgs = show n

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "Basic tests" $ do
    myTest 213 321
    myTest 7389 9873
    myTest 63792 97632
    myTest 566797 977665
    myTest 1000000 1000000

-- the following line is optional for 8.2
main = hspec spec
