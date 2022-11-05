module Kyu7.Plant2Spec where

import Kyu7.Plant2
import Test.HUnit (assertEqual)
import Test.Hspec

test n exp = do
  print $ "Looking for: " ++ show exp
  assertEqual msg exp actual
  where
    actual = plantDoubling n
    msg = "Failed at: " ++ showArgs
    showArgs = show n

spec :: Spec
spec = do
  it "adds Nums" $ do
    test 5 2
    test 8 1
    test 536870911 29
    test 1 1

-- the following line is optional for 8.2
main = hspec spec
