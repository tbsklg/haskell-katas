module Kyu5.LandPerimeterSpec where

import Kyu5.LandPerimeter
import Test.Hspec

spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
      landPerimeter ["OXOOOX", "OXOXOO", "XXOOOX", "OXXXOO", "OOXOOX", "OXOOOO", "OOXOOX", "OOXOOO", "OXOOOO", "OXOOXX"] `shouldBe` "Total land perimeter: 60"
      landPerimeter ["OXOOO", "OOXXX", "OXXOO", "XOOOO", "XOOOO", "XXXOO", "XOXOO", "OOOXO", "OXOOX", "XOOOO", "OOOXO"] `shouldBe` "Total land perimeter: 52"
      landPerimeter ["XXXXXOOO", "OOXOOOOO", "OOOOOOXO", "XXXOOOXO", "OXOXXOOX"] `shouldBe` "Total land perimeter: 40"
      landPerimeter ["XOOOXOO", "OXOOOOO", "XOXOXOO", "OXOXXOO", "OOOOOXX", "OOOXOXX", "XXXXOXO"] `shouldBe` "Total land perimeter: 54"
      landPerimeter ["OOOOXO", "XOXOOX", "XXOXOX", "XOXOOO", "OOOOOO", "OOOXOO", "OOXXOO"] `shouldBe` "Total land perimeter: 40"
