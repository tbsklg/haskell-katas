module Kyu7.FindMinMaxProductSpec where

import Kyu7.FindMinMaxProduct
import Test.HUnit (assertEqual)
import Test.Hspec

test ns n exp = assertEqual ("Failed at: " ++ show (ns, n)) exp (findMinMaxProduct ns n)

spec :: Spec
spec = do
  it "Fixed tests" $ do
    test [1, -2, -3, 4, 6, 7] 1 (Just (-3, 7))
    test [1, -2, -3, 4, 6, 7] 2 (Just (-21, 42))
    test [1, -2, -3, 4, 6, 7] 3 (Just (-126, 168))
    test [1, -2, -3, 4, 6, 7] 7 Nothing
    test [] 2 Nothing
    test [0, 6, 3, 5, 4] 4 (Just (0, 360))
    test [5, 4, 3, 3, 6] 2 (Just (9, 30))
    test [-4, -10, -1] 2 (Just (4, 40))

-- the following line is optional for 8.2
main = hspec spec
