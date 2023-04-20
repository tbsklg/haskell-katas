module Kyu6.SumOfPartsSpec (spec) where

import Kyu6.SumOfParts (partsSum)
import Test.Hspec

spec :: Spec
spec = do
  describe "Sample tests" $ do
    it "Tests" $ do
      partsSum [] `shouldBe` [0]
      partsSum [0, 1, 3, 6, 10] `shouldBe` [20, 20, 19, 16, 10, 0]
      partsSum [1, 2, 3, 4, 5, 6] `shouldBe` [21, 20, 18, 15, 11, 6, 0]
      partsSum [744125, 935, 407, 454, 430, 90, 144, 6710213, 889, 810, 2579358] `shouldBe` [10037855, 9293730, 9292795, 9292388, 9291934, 9291504, 9291414, 9291270, 2581057, 2580168, 2579358, 0]
