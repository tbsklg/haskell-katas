module Kyu5.JosephusSpec where
import Kyu5.Josephus

import Test.Hspec
import Test.QuickCheck
import Test.Hspec.QuickCheck
import Text.Printf (printf)

testJos ::  Int -> Int -> Int -> Spec
testJos n k s = 
    it (printf "should return josephusSurvivor for n k result : %d %d --> %d \n" n k  s) $
        josephusSurvivor n k `shouldBe` s

spec :: Spec
spec = do
    describe "closest" $ do
        testJos 7 3 4
        testJos 11 19 10
        testJos 40 3 28
        testJos 14 2 13
        testJos 100 1 100
