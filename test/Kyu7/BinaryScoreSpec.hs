module Kyu7.BinaryScoreSpec (spec, main) where

import Kyu7.BinaryScore (score)
import Test.Hspec
import Test.QuickCheck

tester :: Integer -> Integer -> Spec
tester n ans = it ("should work when n = " ++ show n) $ score n `shouldBe` ans

main = hspec spec
spec = do
  describe "score" $ do
    tester 0 0
    tester 1 1
    tester 8 15
    tester 49 63
    tester 1000000 1048575
