module Kyu6.FindOutlierSpec (spec) where

import Kyu6.FindOutlier
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    findOutlier [2, 4, 0, 100, 4, 11, 2602, 36] `shouldBe` 11
    findOutlier [160, 3, 1719, 19, 11, 13, -21] `shouldBe` 160

    findOutlier [2, 6, 8, -10, 3] `shouldBe` 3
    findOutlier [206847684, 1056521, 7, 17, 1901, 21104421, 7, 1, 35521, 1, 7781] `shouldBe` 206847684
    findOutlier [2147483647, 0, 1] `shouldBe` 0
