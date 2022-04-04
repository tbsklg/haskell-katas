module Kyu7.BingoSpec (spec) where

import Kyu7.Bingo (bingo)
import Test.Hspec

main = hspec spec
spec = describe "BINGO!" $ it "Example tests" $ do
  bingo [1,2,3,4,5,6,7,8,9,10] `shouldBe` "LOSE"
  bingo [21,13,2,7,5,14,7,15,9,10] `shouldBe` "WIN"
