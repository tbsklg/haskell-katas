module Kyu6.SortingByBitsSpec (spec) where

import Test.Hspec
import Kyu6.SortingByBits (sortByBit)

spec :: Spec
spec = do
  it "example tests" $ do
    sortByBit [3, 8, 3, 6, 5, 7, 9, 1] `shouldBe` [1, 8, 3, 3, 5, 6, 9, 7]
    sortByBit [9,4,5,3,5,7,2,56,8,2,6,8,0] `shouldBe` [0, 2, 2, 4, 8, 8, 3, 5, 5, 6, 9, 7, 56]
