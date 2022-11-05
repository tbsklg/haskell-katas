module Kyu7.SF37Spec where

import Kyu7.SF37
import Test.Hspec

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "works on a few fixed cases" $ do
    houseNumbersSum [5, 1, 2, 3, 0, 1, 5, 0, 2] `shouldBe` 11
    houseNumbersSum [4, 2, 1, 6, 0] `shouldBe` 13
    houseNumbersSum [4, 1, 2, 3, 0, 10, 2] `shouldBe` 10
    houseNumbersSum [0, 1, 2, 3, 4, 5] `shouldBe` 0

-- the following line is optional for 8.2
main = hspec spec
