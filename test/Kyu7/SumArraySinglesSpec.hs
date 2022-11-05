module Kyu7.SumArraySinglesSpec where

import Kyu7.SumArraySingles
import Test.Hspec

spec :: Spec
spec = do
  describe "Sum of array singles" $ do
    it "Basic tests" $ do
      repeats [4, 5, 7, 5, 4, 8] `shouldBe` 15
      repeats [9, 10, 19, 13, 19, 13] `shouldBe` 19
      repeats [16, 0, 11, 4, 8, 16, 0, 11] `shouldBe` 12
      repeats [5, 17, 18, 11, 13, 18, 11, 13] `shouldBe` 22
      repeats [5, 10, 19, 13, 10, 13] `shouldBe` 24
