module Kyu7.TowersSpec (spec, main) where

import Kyu7.Towers (towerCombination)
import Test.Hspec

spec = do
  describe "towerCombination" $ do
    it "should work for the examples" $ do
      towerCombination 2 `shouldBe` 2
      towerCombination 3 `shouldBe` 6

main = hspec spec
