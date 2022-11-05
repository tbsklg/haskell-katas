module Kyu7.FillTheHDDSpec (spec) where

import Kyu7.FillTheHDD (save)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    save [4, 4, 4, 3, 3] 12 `shouldBe` 3
    save [4, 4, 4, 3, 3] 11 `shouldBe` 2
    save [4, 8, 15, 16, 23, 42] 108 `shouldBe` 6
    save [13] 13 `shouldBe` 1
    save [1, 2, 3, 4] 250 `shouldBe` 4
    save [100] 500 `shouldBe` 1
    save [11, 13, 15, 17, 19] 8 `shouldBe` 0
    save [45] 12 `shouldBe` 0
