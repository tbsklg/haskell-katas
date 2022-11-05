module Kyu5.WeightSortSpec where

import Kyu5.WeightSort (orderWeight)
import Test.Hspec
import Text.Printf (printf)

testWeightSort :: [Char] -> [Char] -> Spec
testWeightSort strg s =
  it (printf "should return weightSort for string: %s" strg) $
    orderWeight strg `shouldBe` s

spec :: Spec
spec = do
  describe "WeightSort: Basic Tests" $ do
    testWeightSort "103 123 4444 99 2000" "2000 103 123 4444 99"
    testWeightSort "9999 10003 2000 44444444 9999" "2000 10003 44444444 9999 9999"
    testWeightSort "71899703 200 6 91 425 4 67407 7 96488 6 4 2 7 31064 9 7920 1 34608557 11 110" "1 11 110 2 200 4 4 6 6 7 7 9 91 425 31064 7920 67407 96488 34608557 71899703"
