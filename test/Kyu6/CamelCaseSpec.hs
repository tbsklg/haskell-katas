module Kyu6.CamelCaseSpec (spec) where

import Kyu6.CamelCase (toCamelCase)
import Test.Hspec

main = hspec spec

spec = do
  describe "toCamelCase" $ do
    it "should work for some examples" $ do
      toCamelCase "the_stealth_warrior" `shouldBe` "theStealthWarrior"
      toCamelCase "The-Stealth-Warrior" `shouldBe` "TheStealthWarrior"
