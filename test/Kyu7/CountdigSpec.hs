module Kyu7.CountdigSpec (spec) where
    
import Kyu7.Countdig (nbDig)   

import Test.Hspec
import Text.Printf (printf)

testDig :: Int -> Int -> Int -> Spec
testDig n d u = 
    it (printf "should return nbDig for n: %d d: %d " n d) $
        nbDig n d `shouldBe` u

spec :: Spec
spec = do
    describe "nbDig" $ do
        testDig 5750 0 4700
        testDig 11011 2 9481
        testDig 12224 8 7733
        testDig 11549 1 11905