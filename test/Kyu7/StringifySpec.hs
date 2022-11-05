module Kyu7.StringifySpec (spec) where

import Kyu7.Stringify
import Test.Hspec

main = hspec spec

spec = do
  describe "Linked list conversion" $ do
    it "works for sample lists" $ do
      stringify [] `shouldBe` "null"
      stringify [1, 2, 3] `shouldBe` "1 -> 2 -> 3 -> null"
      stringify [0, 1, 4, 9, 16] `shouldBe` "0 -> 1 -> 4 -> 9 -> 16 -> null"
