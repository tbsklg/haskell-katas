module Kyu6.HowmanySpec where

import Data.Char
import Data.List
import Kyu6.Howmany
import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testNb :: Int -> Int -> Int -> Spec
testNb n d s =
  it (printf "should return selNumber for n d result : %d %d --> %d \n" n d s) $
    selNumber n d `shouldBe` s

spec :: Spec
spec = do
  describe "selNumber small values" $ do
    testNb 0 1 0
    testNb 3 1 0
    testNb 13 1 1
    testNb 15 1 1
