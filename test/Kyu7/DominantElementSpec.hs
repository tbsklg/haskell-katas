module Kyu7.DominantElementSpec where

import Kyu7.DominantElement
import Test.Hspec

spec :: Spec
spec = do
  describe "Dominant array elements" $ do
    it "Basic tests" $ do
      solve [16, 17, 14, 3, 14, 5, 2] `shouldBe` [17, 14, 5, 2]
      solve [92, 52, 93, 31, 89, 87, 77, 105] `shouldBe` [105]
      solve [75, 47, 42, 56, 13, 55] `shouldBe` [75, 56, 55]
      solve [67, 54, 27, 85, 66, 88, 31, 24, 49] `shouldBe` [88, 49]
      solve [76, 17, 25, 36, 29] `shouldBe` [76, 36, 29]
      solve [104, 18, 37, 9, 36, 47, 28] `shouldBe` [104, 47, 28]
