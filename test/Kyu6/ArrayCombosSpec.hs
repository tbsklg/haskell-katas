module Kyu6.ArrayCombosSpec (spec, main) where

import Kyu6.ArrayCombos
import Test.Hspec

main = hspec spec

spec = do
  describe "Array  combinations" $ do
    it "Basic tests" $ do
      solve [[1, 2], [4], [5, 6]] `shouldBe` 4
      solve [[1, 2], [4, 4], [5, 6, 6]] `shouldBe` 4
      solve [[1, 2], [3, 4], [5, 6]] `shouldBe` 8
      solve [[1, 2, 3], [3, 4, 6, 6, 7], [8, 9, 10, 12, 5, 6]] `shouldBe` 72
