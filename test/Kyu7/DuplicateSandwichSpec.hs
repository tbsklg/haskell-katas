module Kyu7.DuplicateSandwichSpec (spec) where

import Kyu7.DuplicateSandwich (duplicateSandwich)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    duplicateSandwich [0, 1, 2, 3, 4, 5, 6, 1, 7, 8] `shouldBe` [2, 3, 4, 5, 6]
    duplicateSandwich ["None", "Hello", "Example", "hello", "None", "Extra"] `shouldBe` ["Hello", "Example", "hello"]
    duplicateSandwich [0, 0] `shouldBe` []
    duplicateSandwich [True, False, True] `shouldBe` [False]
    duplicateSandwich "example" `shouldBe` "xampl"
