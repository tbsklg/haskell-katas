module Kyu7.FunreverseSpec where

import Kyu7.Funreverse (reverseFun)  

import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testFun :: String -> String -> Spec
testFun s u = 
    it (printf "should return reverseFun for s : %s " s) $
        reverseFun s `shouldBe` u

spec :: Spec
spec = do
  describe "reverseFun" $ do
    testFun "012" "201"
    testFun "012345" "504132"
    testFun "0123456789" "9081726354"
    testFun "Hello" "oHlel"
    testFun "4ppso1vdjc9rjyf5bkmd5nztr8" "84rptpzsno51dvmdkjbc59fryj"
