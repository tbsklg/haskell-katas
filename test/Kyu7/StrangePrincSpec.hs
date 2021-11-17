module Kyu7.StrangePrincSpec where

import Kyu7.StrangePrinc

import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testLockers :: Int -> Int -> Spec
testLockers n s = 
    it (printf "should return numOpenLockers for n: %d " n) $
        numOpenLockers n `shouldBe` s

spec :: Spec
spec = do
    describe "numOpenLockers: Basic Tests" $ do 
        testLockers 0 0
        testLockers 1 1
        testLockers 2 1
        testLockers 3 1
        testLockers 4 2
        testLockers 5 2
        testLockers 56 7
