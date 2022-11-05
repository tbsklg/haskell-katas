module Kyu7.PeakArrayIndexSpec where

import Kyu7.PeakArrayIndex
import Test.Hspec

spec = do
  describe "Peak Array Index" $ do
    it "Basic tests" $ do
      peak [1, 2, 3, 5, 3, 2, 1] `shouldBe` Just 3
      peak [1, 12, 3, 3, 6, 3, 1] `shouldBe` Just 2
      peak [10, 20, 30, 40] `shouldBe` Nothing
