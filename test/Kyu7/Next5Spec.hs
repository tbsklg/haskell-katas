module Kyu7.Next5Spec where

import Kyu7.Next5 (roundToNext5)
import Test.Hspec
import Test.Hspec.QuickCheck
import Test.QuickCheck

spec :: Spec
spec = do
  describe "roundToNext5" $ do
    it "works for some simple cases" $ do
      roundToNext5 0 `shouldBe` 0
      roundToNext5 1 `shouldBe` 5
      roundToNext5 3 `shouldBe` 5
      roundToNext5 5 `shouldBe` 5
      roundToNext5 7 `shouldBe` 10
      roundToNext5 39 `shouldBe` 40

    it "works for negative numbers" $ do
      roundToNext5 (-1) `shouldBe` (0)
      roundToNext5 (-3) `shouldBe` (-0)
      roundToNext5 (-5) `shouldBe` (-5)
      roundToNext5 (-7) `shouldBe` (-5)
      roundToNext5 (-39) `shouldBe` (-35)

    prop "returns only numbers that are divisible by five" $ \(Positive n) ->
      roundToNext5 n `shouldSatisfy` (0 ==) . flip mod 5
