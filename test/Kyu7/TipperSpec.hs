module Kyu7.TipperSpec where

import Kyu7.Tipper
import Test.Hspec

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "handles fixed cases" $ do
    calcTip 4 1 `shouldBe` 1
    calcTip 4 0 `shouldBe` 0
    calcTip 4 (-1) `shouldBe` 0
    calcTip 5 1 `shouldBe` 2
    calcTip 5 0 `shouldBe` 0
    calcTip 5 (-1) `shouldBe` 0
    calcTip 14 1 `shouldBe` 2
    calcTip 14 0 `shouldBe` 0
    calcTip 14 (-1) `shouldBe` 0
    calcTip 15 1 `shouldBe` 3
    calcTip 15 0 `shouldBe` 1
    calcTip 15 (-1) `shouldBe` 0
    calcTip 24 1 `shouldBe` 3
    calcTip 24 0 `shouldBe` 1
    calcTip 24 (-1) `shouldBe` 0
    calcTip 25 1 `shouldBe` 4
    calcTip 25 0 `shouldBe` 2
    calcTip 25 (-1) `shouldBe` 0
    calcTip 125 1 `shouldBe` 14
    calcTip 125 0 `shouldBe` 12
    calcTip 125 (-1) `shouldBe` 5
    calcTip 144 1 `shouldBe` 15
    calcTip 144 0 `shouldBe` 13
    calcTip 144 (-1) `shouldBe` 6

-- the following line is optional for 8.2
main = hspec spec
