module Kyu5.PickPeakSpec (spec) where

import Kyu5.PickPeak (PickedPeaks (..), pickPeaks)
import Test.Hspec

spec :: Spec
spec = do
  it "[3,2,3,6,4,1,2,3,2,1,2,3]" $ do
    pickPeaks [3, 2, 3, 6, 4, 1, 2, 3, 2, 1, 2, 3] `shouldBe` PickedPeaks {pos = [3, 7], peaks = [6, 3]}

  it "[1,2,5,4,3,2,3,6,4,1,2,3,3,4,5,3,2,1,2,3,5,5,4,3]" $ do
    pickPeaks [1, 2, 5, 4, 3, 2, 3, 6, 4, 1, 2, 3, 3, 4, 5, 3, 2, 1, 2, 3, 5, 5, 4, 3] `shouldBe` PickedPeaks {pos = [2, 7, 14, 20], peaks = [5, 6, 5, 5]}

  it "[2,1,3,1,2,2,2,2]" $ do
    pickPeaks [2, 1, 3, 1, 2, 2, 2, 2] `shouldBe` PickedPeaks {pos = [2], peaks = [3]}

  it "[11,7,4,14,9,-4,1,8,10,12,8,8,-4,7,5]" $ do
    pickPeaks [11, 7, 4, 14, 9, -4, 1, 8, 10, 12, 8, 8, -4, 7, 5] `shouldBe` PickedPeaks {pos = [3, 9, 13], peaks = [14, 12, 7]}

  it "[3,-3,11,1,11,4,-3,8,0,9,-1,2,7,-4,15,7,-2,0,-4,12,8,4,-4,1,11,0,-1,6,6,6,7,12,-2,-5,13,1,15,11,8,15,9,-4,3,7,-5,4,-2]" $ do
    pickPeaks [3, -3, 11, 1, 11, 4, -3, 8, 0, 9, -1, 2, 7, -4, 15, 7, -2, 0, -4, 12, 8, 4, -4, 1, 11, 0, -1, 6, 6, 6, 7, 12, -2, -5, 13, 1, 15, 11, 8, 15, 9, -4, 3, 7, -5, 4, -2] `shouldBe` PickedPeaks {pos = [2, 4, 7, 9, 12, 14, 17, 19, 24, 31, 34, 36, 39, 43, 45], peaks = [11, 11, 8, 9, 7, 15, 0, 12, 11, 12, 13, 15, 15, 7, 4]}
