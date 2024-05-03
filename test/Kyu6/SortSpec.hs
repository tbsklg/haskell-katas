module Kyu6.SortSpec where

import Kyu6.Sort (sortme)
import Test.Hspec

spec :: Spec
spec = do
  it "example string" $ do
    sortme ["Hello", "there", "I'm", "fine"] `shouldBe` ["fine", "Hello", "I'm", "there"]
