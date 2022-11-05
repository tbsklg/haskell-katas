module Kyu7.MaxProduct2Spec where

import Kyu7.MaxProduct2
import Test.HUnit (assertEqual)
import Test.Hspec

test ns exp = assertEqual ("Failed at: " ++ show ns) exp (maximumProduct ns)

spec :: Spec
spec = do
  it "Fixed Cases" $ do
    test [1, 2, 3] 1
    test [-1, 2, -3] 2
    test [-1, -2, -3] (-1)
    test [-1, -2, -3, -4] (-4)
    test [0, 1, 2, 3] 0
    test [0, -1, -2, -3] (-3)
    test [0, -1, -2, -3, -4] 0
    test [0, -1, 2, -3, 4] 0
    test [0, -1, 2, 3] (-1)
    test [0, -1, -2, -3, 4] (-3)
    test [0, 0, 1] 0
    test [0, 0, -1] (-1)
    test [0, -1, 1] (-1)
    test [0, 0, -1, 1] (-1)
    test [0, 0, 0] 0
    test [0, 0, 1, 2, 3] 0
    test [-1, -2, -3, 0, 1, 2, 3] (-3)
    test [-1, -2, 0, 1, 2] 0
    test [-1, -2, 1, 2] 1
    test [-1, -2, -3, 1, 2, 3] (-1)

-- the following line is optional for 8.2
main = hspec spec
