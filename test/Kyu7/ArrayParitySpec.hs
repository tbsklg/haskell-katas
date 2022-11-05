module Kyu7.ArrayParitySpec (spec) where

import Kyu7.ArrayParity
import Test.Hspec

main = hspec spec

spec = do
  describe "Array element parity" $ do
    it "Basic tests" $ do
      solve [1, -1, 2, -2, 3] `shouldBe` 3
      solve [-3, 1, 2, 3, -1, -4, -2] `shouldBe` -4
      solve [1, -1, 2, -2, 3, 3] `shouldBe` 3
      solve [-110, 110, -38, -38, -62, 62, -38, -38, -38] `shouldBe` -38
      solve [-9, -105, -9, -9, -9, -9, 105] `shouldBe` -9
