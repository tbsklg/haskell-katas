module Kyu6.UniqueInOrderSpec (spec) where

import Kyu6.UniqueInOrder (uniqueInOrder)
import Test.Hspec

spec = do
  it "should reduce duplicates" $ do
    uniqueInOrder "AAAABBBCCDAABBB" `shouldBe` "ABCDAB"
