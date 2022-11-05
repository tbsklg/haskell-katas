module Kyu7.MoveZerosSpec where

import Control.Monad
import Kyu7.MoveZeros
import Test.Hspec
import Text.Printf

spec :: Spec
spec = do
  describe (show input ++ " right") $
    do
      it (printf "%s with zeroes aligned to right should be %s" (show input) (show expectedRight))
      $ do moveZeroes True input `shouldBe` expectedRight
  describe (show input ++ " left") $
    do
      it (printf "%s with zeroes aligned to right should be %s" (show input) (show expectedLeft))
      $ do moveZeroes False input `shouldBe` expectedLeft
  where
    input = [12, 0, 10, 0, 8, 12, 7, 6, 0, 4, 10, 12, 0]
    expectedRight = [12, 10, 8, 12, 7, 6, 4, 10, 12, 0, 0, 0, 0]
    expectedLeft = [0, 0, 0, 0, 12, 10, 8, 12, 7, 6, 4, 10, 12]
