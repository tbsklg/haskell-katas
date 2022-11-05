module Kyu7.DistributeGiftsSpec (spec) where

import Kyu7.DistributeGifts (distributeGifts)
import Test.Hspec

main = hspec spec

spec = do
  describe "Christmas mission: Distribute gifts #1" $ do
    it "Example tests" $ do
      distributeGifts [2, 4, 3, 5, 6, 7] `shouldBe` 22
      distributeGifts [10, 10, 40, 100] `shouldBe` 80
      distributeGifts [11, 22, 33] `shouldBe` 33
