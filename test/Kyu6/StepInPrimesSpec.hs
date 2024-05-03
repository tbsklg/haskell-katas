module Kyu6.StepInPrimesSpec where

import Kyu6.StepInPrimes (step)
import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testStep :: Integer -> Integer -> Integer -> Maybe (Integer, Integer) -> Spec
testStep g m n s =
  it (printf "should return step for g: %d, m: %d , n: %d " g m n) $
    step g m n `shouldBe` s

spec :: Spec
spec = do
  describe "Step: Basic Tests" $ do
    testStep 2 100 110 $ Just (101, 103)
    testStep 4 100 110 $ Just (103, 107)
    testStep 6 100 110 $ Just $ (101, 107)
    testStep 8 300 400 $ Just (359, 367)
    testStep 10 300 400 $ Just (307, 317)
