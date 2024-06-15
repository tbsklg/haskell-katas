module Kyu7.IfYouCanSpec (spec) where

import Kyu7.IfYouCan (cantBeatSoJoin)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    cantBeatSoJoin [[1, 2], [3, 4], [5, 6], [7, 8], [9]] `shouldBe` [7, 8, 5, 6, 9, 3, 4, 1, 2]
    cantBeatSoJoin [[5, 1], [9, 14], [17, 23], [4, 1], [0, 1]] `shouldBe` [17, 23, 9, 14, 5, 1, 4, 1, 0, 1]
    cantBeatSoJoin [[13, 37], [43, 17], [2, 3], [45, 64], [1, 9]] `shouldBe` [45, 64, 43, 17, 13, 37, 1, 9, 2, 3]
    cantBeatSoJoin [[52, 11, 33, 222], [582, 192, 442, 512, 41], [23912], [2314], [2491, 2412, 84828]] `shouldBe` [2491, 2412, 84828, 23912, 2314, 582, 192, 442, 512, 41, 52, 11, 33, 222]
    cantBeatSoJoin [[], [], [], []] `shouldBe` []
    cantBeatSoJoin [[], [], [0], []] `shouldBe` [0]
    cantBeatSoJoin [[1, 0, 1, 0, 1, 0], [0, 1, 0, 0, 1, 0, 0, 1], [0], []] `shouldBe` [1, 0, 1, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0]
    cantBeatSoJoin [[0, 1, 1, 1], [1, 0, 1, 1], [1, 1, 0, 1], [3]] `shouldBe` [0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1, 3]
