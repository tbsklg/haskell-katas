module Kyu7.IsPolydivisibleSpec (spec) where

import Kyu7.IsPolydivisible (isPolydivisible)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    isPolydivisible 1232 `shouldBe` True
    isPolydivisible 123220 `shouldBe` False
