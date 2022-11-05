module Kyu7.PackingSpec where

import Kyu7.Packing
import Test.Hspec

spec :: Spec
spec = do
  it "a few fixed cases " $ do
    arrayPacking [24, 85, 0] `shouldBe` 21784
    arrayPacking [1, 1] `shouldBe` 257
    arrayPacking [0] `shouldBe` 0
    arrayPacking [255, 255, 255, 255] `shouldBe` 4294967295
    arrayPacking [23, 45, 39] `shouldBe` 2567447

-- the following line is optional for 8.2
main = hspec spec
