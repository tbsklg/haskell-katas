module Kyu7.PowofdigitsSpec where

import Kyu7.Powofdigits (eqSumPowDig)
import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testPowDig :: Int -> Int -> [Int] -> Spec
testPowDig hmax po s =
  it (printf "should return eqSumPowDig for hmax: %d power: %d " hmax po) $
    eqSumPowDig hmax po `shouldBe` s

spec :: Spec
spec = do
  describe "eqSumPowDig" $ do
    testPowDig 100 2 []
    testPowDig 1000 2 []
    testPowDig 2000 2 []
    testPowDig 200 3 [153]
    testPowDig 370 3 [153, 370]
