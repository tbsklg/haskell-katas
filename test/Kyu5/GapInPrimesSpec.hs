module Kyu5.GapInPrimesSpec where

import Kyu5.GapInPrimes (gap)
import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testGap :: Integer -> Integer -> Integer -> Maybe (Integer, Integer) -> Spec
testGap g m n s =
  it (printf "should return gap for g: %d, m: %d , n: %d " g m n) $
    gap g m n `shouldBe` s

spec :: Spec
spec = do
  describe "Gap: Basic Tests" $ do
    testGap 2 100 110 (Just (101, 103))
    testGap 4 100 110 (Just (103, 107))
    testGap 6 100 110 Nothing
    testGap 8 300 400 (Just (359, 367))
    testGap 10 300 400 (Just (337, 347))
