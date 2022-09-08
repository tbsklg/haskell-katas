module Kyu7.AllRationalsSpec (spec) where

import Kyu7.AllRationals (allRationals)
import Test.Hspec

spec :: Spec
spec = do
  describe "some simple tests" $ do
    it "allRationals !! 0" $ do
      allRationals !! 0 `shouldBe` (1, 1)
    it "allRationals !! 3" $ do
      allRationals !! 3 `shouldBe` (1, 3)
    it "allRationals !! 4" $ do
      allRationals !! 4 `shouldBe` (3, 2)
    it "allRationals !! 10" $ do
      allRationals !! 10 `shouldBe` (5, 2)

  describe "some larger indices" $ do
    it "allRationals !! 100" $ do
      allRationals !! 100 `shouldBe` (19, 12)
    it "allRationals !! 1000" $ do
      allRationals !! 1000 `shouldBe` (39, 28)
    it "allRationals !! 10000" $ do
      allRationals !! 10000 `shouldBe` (205, 162)
    it "allRationals !! 100000" $ do
      allRationals !! 100000 `shouldBe` (713, 586)
