module Kyu7.ElectionWinnersSpec where

import Kyu7.ElectionWinners
import Test.HUnit (assertEqual)
import Test.Hspec

test vs k exp = do
  assertEqual msg exp actual
  where
    actual = electionWinners vs k
    msg = "Failed at: " ++ showArgs
    showArgs = show (vs, k)

spec :: Spec
spec = do
  it "It should works for basic tests." $ do
    test [2, 3, 5, 2] 3 2
    test [1, 3, 3, 1, 1] 0 0
    test [5, 1, 3, 4, 1] 0 1
    test [1, 1, 1, 1] 1 4
    test [1, 1, 1, 1] 0 0
    test [3, 1, 1, 3, 1] 2 2

-- the following line is optional for 8.2
main = hspec spec
