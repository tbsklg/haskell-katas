module Kyu7.CompsqstringsSpec where

import Kyu7.Compsqstrings

import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testCompose :: String -> String -> String -> Spec
testCompose s1 s2 s = 
    it (printf "should return compose for s1: %s \n  s2 %s " (show s1) (show s2)) $
        compose s1 s2 `shouldBe` s

spec :: Spec
spec = do
    describe "compose" $ do
        testCompose "byGt\nhTts\nRTFF\nCnnI" "jIRl\nViBu\nrWOb\nNkTB"
            "bNkTB\nhTrWO\nRTFVi\nCnnIj"
        testCompose "HXxA\nTGBf\nIPhg\nuUMD" "Hcbj\nqteH\nGbMJ\ngYPW"
            "HgYPW\nTGGbM\nIPhqt\nuUMDH"
        testCompose "tSrJ\nOONy\nsqPF\nxMkB" "hLqw\nEZuh\nmYFl\nzlYf" 
            "tzlYf\nOOmYF\nsqPEZ\nxMkBh"
