module Kyu7.IntSqRootSpec where

import Kyu7.IntSqRoot
import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testIntRac :: Integer -> Integer -> Integer -> Spec
testIntRac n guess s =
  it (printf "should return intRac %d" n) $
    intRac n guess `shouldBe` s

spec :: Spec
spec = do
  describe "intRac" $ do
    testIntRac 25 1 4
    testIntRac 125348 300 3
