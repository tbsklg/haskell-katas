module Kyu5.SumdivsqSpec where

import Data.List
import Kyu5.Sumdivsq
import Test.Hspec
import Text.Printf (printf)

testSquared :: Int -> Int -> [(Int, Int)] -> Spec
testSquared m n s =
  it (printf "should return listSquared") $
    listSquared m n `shouldBe` s

spec :: Spec
spec = do
  describe "listSquared" $ do
    testSquared 1 250 [(1, 1), (42, 2500), (246, 84100)]
    testSquared 42 250 [(42, 2500), (246, 84100)]
    testSquared 250 500 [(287, 84100)]
