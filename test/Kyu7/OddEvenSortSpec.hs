module Kyu7.OddEvenSortSpec where

import Kyu7.OddEvenSort
import Test.Hspec

spec = do
  describe "Odd-Even String Sort" $ do
    it "Basic tests" $ do
      sortMyString "CodeWars" `shouldBe` "CdWr oeas"
      sortMyString "YCOLUE'VREER" `shouldBe` "YOU'RE CLEVER"
