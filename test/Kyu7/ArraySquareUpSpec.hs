module Kyu7.ArraySquareUpSpec (spec) where

import Kyu7.ArraySquareUp (squareUp)
import Test.HUnit (assertEqual)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    assertEqual "squareUp 2" [0, 1, 2, 1] $ squareUp 2
    assertEqual "squareUp 3" [0, 0, 1, 0, 2, 1, 3, 2, 1] $ squareUp 3
    assertEqual "squareUp 4" [0, 0, 0, 1, 0, 0, 2, 1, 0, 3, 2, 1, 4, 3, 2, 1] $ squareUp 4
