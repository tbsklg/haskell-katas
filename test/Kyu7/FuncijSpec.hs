module Kyu7.FuncijSpec where

import Kyu7.Funcij
import Test.Hspec
import Text.Printf (printf)

testMinij :: Integer -> Integer -> Spec
testMinij n s =
  it (printf "should return the result of sum of minima for n = %i " n) $
    sumin n `shouldBe` s

testMaxij :: Integer -> Integer -> Spec
testMaxij n s =
  it (printf "should return the result of sum of maxima for n = %i " n) $
    sumax n `shouldBe` s

spec :: Spec
spec = do
  describe "sumin/sumax/sumsum" $ do
    testMaxij 5 95
    testMaxij 6 161
    testMaxij 8 372

    testMinij 5 55
    testMinij 6 91
    testMinij 8 204
