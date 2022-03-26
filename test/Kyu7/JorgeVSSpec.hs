module Kyu7.JorgeVSSpec where

import Data.List
import Kyu7.JorgeVS
import Kyu7.JorgeVS (cartesianNeighbor)
import Test.Hspec

spec = do
  describe "Simple Test" $
    it " 1 1 " $ do
      sort (cartesianNeighbor 1 1) `shouldBe` [(0, 0), (0, 1), (0, 2), (1, 0), (1, 2), (2, 0), (2, 1), (2, 2)]
      sort (cartesianNeighbor (-7) 17) `shouldBe` [(-8, 16), (-8, 17), (-8, 18), (-7, 16), (-7, 18), (-6, 16), (-6, 17), (-6, 18)]
      sort (cartesianNeighbor 2 (-2)) `shouldBe` [(1, -3), (1, -2), (1, -1), (2, -3), (2, -1), (3, -3), (3, -2), (3, -1)]
