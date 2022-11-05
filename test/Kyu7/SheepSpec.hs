module Kyu7.SheepSpec where

import Kyu7.Sheep
import Test.Hspec

spec :: Spec
spec = do
  it "handles a few fixed cases" $ do
    lostSheep [1, 2] [3, 4] 15 `shouldBe` 5
    lostSheep [3, 1, 2] [4, 5] 21 `shouldBe` 6
    lostSheep [5, 1, 4] [5, 4] 29 `shouldBe` 10
    lostSheep [11, 23, 3, 4, 15] [7, 14, 9, 21, 15] 300 `shouldBe` 178
    lostSheep [2, 5, 8] [11, 23, 3, 4, 15, 112, 12, 4] 355 `shouldBe` 156
    lostSheep [1, 1, 1, 2, 1, 2] [2, 1, 2, 1, 2, 1] 30 `shouldBe` 13
    lostSheep [5, 10, 15] [11, 23, 3, 4, 15] 89 `shouldBe` 3
    lostSheep [3, 6, 9, 12] [3, 2, 1, 2, 3, 1] 44 `shouldBe` 2
    lostSheep [] [] 15 `shouldBe` 15

-- the following line is optional for 8.2
main = hspec spec
