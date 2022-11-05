module Kyu7.BinarySxoreSpec (spec, main) where

import Kyu7.BinarySxore (sxore)
import Test.Hspec
import Test.QuickCheck

tester :: Integer -> Integer -> Spec
tester n ans = it ("should work when n = " ++ show n) $ sxore n `shouldBe` ans

main = hspec spec

spec = do
  describe "sxore" $ do
    tester 0 0
    tester 1 1
    tester 50 51
    tester 1000000 1000000
