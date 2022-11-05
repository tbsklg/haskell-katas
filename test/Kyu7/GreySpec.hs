module Kyu7.GreySpec (spec, main) where

import Kyu7.Grey (shadesOfGrey)
import Test.Hspec
import Test.QuickCheck

spec = do
  describe "shadesOfGrey" $ do
    it "should work for some simple tests" $ do
      shadesOfGrey (-10) `shouldBe` []
      shadesOfGrey 0 `shouldBe` []
      shadesOfGrey 1 `shouldBe` ["#010101"]
      shadesOfGrey 16 `shouldBe` ["#010101", "#020202", "#030303", "#040404", "#050505", "#060606", "#070707", "#080808", "#090909", "#0a0a0a", "#0b0b0b", "#0c0c0c", "#0d0d0d", "#0e0e0e", "#0f0f0f", "#101010"]
    it "should have the correct length" $ do
      property $
        forAll (choose (-10, 254)) $ \n ->
          length (shadesOfGrey n) `shouldBe` max 0 (min 254 n)

main = hspec spec
