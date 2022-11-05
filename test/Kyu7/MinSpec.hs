module Kyu7.MinSpec where

import Kyu7.Min
import Test.Hspec

spec :: Spec
spec = do
  describe "finds min sum" $ do
    it "on fixed cases " $ do
      minValue [1, 3, 1] `shouldBe` 13
      minValue [4, 7, 5, 7] `shouldBe` 457
      minValue [4, 8, 1, 4] `shouldBe` 148
      minValue [5, 7, 9, 5, 7] `shouldBe` 579
      minValue [6, 7, 8, 7, 6, 6] `shouldBe` 678
      minValue [5, 6, 9, 9, 7, 6, 4] `shouldBe` 45679
      minValue [1, 9, 1, 3, 7, 4, 6, 6, 7] `shouldBe` 134679
      minValue [3, 6, 5, 5, 9, 8, 7, 6, 3, 5, 9] `shouldBe` 356789
