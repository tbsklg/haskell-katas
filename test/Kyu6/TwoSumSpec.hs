module Kyu6.TwoSumSpec (spec) where

import Kyu6.TwoSum (twoSum)
import Test.Hspec

spec :: Spec
spec = do
  it "finds the matching pair" $ do
    let (i, j) = twoSum [1234, 5678, 9012] 14690
    (min i j, max i j) `shouldBe` (1, 2)
    let (i, j) = twoSum [1, 2, 3] 4
    (min i j, max i j) `shouldBe` (0, 2)
    let (i, j) = twoSum [2, 2, 3] 4
    (min i j, max i j) `shouldBe` (0, 1)