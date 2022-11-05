module Kyu7.TramCapacitySpec where

import Kyu7.TramCapacity
import Test.Hspec

spec = do
  describe "Tram Capacity" $ do
    it "Basic tests" $ do
      tram 4 [0, 2, 4, 4] [3, 5, 2, 0] `shouldBe` 6
      tram 2 [0, 2, 4, 4] [3, 5, 2, 0] `shouldBe` 6
      tram 1 [0, 2, 4, 4] [3, 5, 2, 0] `shouldBe` 3
      tram 10 [0, 1, 2, 3, 4, 5, 6, 7, 8, 9] [9, 8, 7, 6, 5, 4, 3, 2, 1, 0] `shouldBe` 25
      tram 5 [0, 2, 4, 14, 2] [3, 5, 14, 0, 0] `shouldBe` 16
