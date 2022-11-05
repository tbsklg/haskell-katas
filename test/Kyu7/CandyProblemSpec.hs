module Kyu7.CandyProblemSpec (spec) where

import Kyu7.CandyProblem (candies)
import Test.Hspec
import Test.QuickCheck

examples = do
  it "should work for some examples" $ do
    candies [5, 8, 6, 4] `shouldBe` 9
    candies [1, 2, 4, 6] `shouldBe` 11
    candies [1, 2] `shouldBe` 1
    candies [4, 2] `shouldBe` 2

main = hspec spec

spec = do
  describe "Examples" examples
