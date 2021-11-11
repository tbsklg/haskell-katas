module Kyu7.MaxAdjSpec where

import Test.Hspec
import Kyu7.MaxAdj

spec :: Spec
spec = do
    describe "finds max product of adj elements" $ do
        it "fixed cases" $ do
          adjacentElementProduct [5, 8] `shouldBe` 40
          adjacentElementProduct [5, 1, 1, 8] `shouldBe` 8
          adjacentElementProduct [1, 2, 3] `shouldBe` 6
          adjacentElementProduct [1, 5, 10, 9] `shouldBe` 90
          adjacentElementProduct [4, 12, 3, 1, 5] `shouldBe` 48
          adjacentElementProduct [5, 1, 2, 3, 1, 4] `shouldBe` 6
          adjacentElementProduct [3, 6, -2, -5, 7, 3] `shouldBe` 21
          adjacentElementProduct [9, 5, 10, 2, 24, -1, -48] `shouldBe` 50
          adjacentElementProduct [5, 6, -4, 2, 3, 2, -23] `shouldBe` 30
          adjacentElementProduct [-23, 4, -5, 99, -27, 329, -2, 7, -921] `shouldBe` -14
          adjacentElementProduct [5, 1, 2, 3, 1, 4] `shouldBe` 6
          adjacentElementProduct [1, 0, 1, 0, 1000] `shouldBe` 0
          adjacentElementProduct [1, 2, 3, 0] `shouldBe` 6
