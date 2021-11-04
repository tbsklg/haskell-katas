module Kyu7.SumDifferencesBetweenProductsAndLCMsSpec where

import Kyu7.SumDifferencesBetweenProductsAndLCMs (sumDiffs)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "sumDiffs" $ do
    given [(15, 18), (4, 5), (12, 60)] returns 840
    given [(1, 1), (0, 0), (13, 91)] returns 1092
  where
    given a _ r = it ("returns " ++ show r ++ " on " ++ show a) $ sumDiffs a `shouldBe` r
    returns = undefined
