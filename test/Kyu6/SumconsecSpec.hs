module Kyu6.SumconsecSpec where

import Kyu6.Sumconsec (sumConsecutives)

import Test.Hspec
import Text.Printf (printf)

testsumCons :: [Int] -> [Int] -> Spec
testsumCons a s =
  it (printf "should return sumConsecutives for array: %s " (show a)) $
    sumConsecutives a `shouldBe` s

spec :: Spec
spec = do
  describe "Basic Tests" $ do
    testsumCons [1, 4, 4, 4, 0, 4, 3, 3, 1] [1, 12, 0, 4, 6, 1]
    testsumCons [1, 1, 7, 7, 3] [2, 14, 3]
    testsumCons [-5, -5, 7, 7, 12, 0] [-10, 14, 12, 0]
    testsumCons [3, 3, 3, 3, 1] [12, 1]
    testsumCons [2, 2, -4, 4, 5, 5, 6, 6, 6, 6, 6, 1] [4, -4, 4, 10, 30, 1]
    testsumCons [1, 1, 1, 1, 1, 3] [5, 3]
    testsumCons [1, -1, -2, 2, 3, -3, 4, -4] [1, -1, -2, 2, 3, -3, 4, -4]
