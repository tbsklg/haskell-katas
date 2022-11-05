module Kyu7.ArraySortSpec where

import Kyu7.ArraySort
import Test.Hspec

spec :: Spec
spec = do
  describe "sort array" $ do
    it "should work on the examples" $ do
      sortArray ['x', 'y', 'z'] [1, 2, 0] `shouldBe` ['z', 'x', 'y']
      sortArray [1, 2, 3, 4, 5] [0, 2, 1, 4, 3] `shouldBe` [1, 3, 2, 5, 4]
