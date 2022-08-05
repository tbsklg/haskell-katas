module Kyu7.MoveZeroesSpec where

import Control.Monad
import Test.Hspec
import Text.Printf

import Kyu7.MoveZeroes

spec :: Spec
spec = do
  describe (show input ++ " right") $ do
    it (printf "%s with zeroes aligned to right should be %s" (show input) (show expectedRight))
    $ do move_zeroes True input `shouldBe` expectedRight
  describe (show input ++ " left") $ do
    it (printf "%s with zeroes aligned to right should be %s" (show input) (show expectedLeft))
    $ do move_zeroes False input `shouldBe` expectedLeft
  where
    input         = [12, 0, 10, 0, 8, 12, 7, 6, 0, 4, 10, 12, 0]
    expectedRight = [12, 10, 8, 12, 7, 6, 4, 10, 12, 0, 0, 0, 0]
    expectedLeft  = [0, 0, 0, 0, 12, 10, 8, 12, 7, 6, 4, 10, 12]
