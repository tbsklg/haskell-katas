module Kyu6.ThirteenSpec (spec, main) where
import Kyu6.Thirteen (thirt)

import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testThirt :: Integer -> Integer -> Spec
testThirt n u = 
    it (printf "should return thirt for n: %d --> %d " n u) $
        thirt n `shouldBe` u

main = hspec spec
spec = do

    describe "fcn" $ do
        testThirt 8529  79
        testThirt 85299258 31 
        testThirt 5634 57
        testThirt 1111111111 71
        testThirt 987654321 30
