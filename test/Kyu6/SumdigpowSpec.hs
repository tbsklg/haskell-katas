module Kyu6.SumdigpowSpec where
import Kyu6.Sumdigpow

import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

dotest :: Int -> Int -> [Int] -> Spec
dotest a b s = 
    it (printf "should return sumDigPow for a, b: %d %d result --> %s \n" a b (show s)) $
        sumDigPow a b `shouldBe` s

spec :: Spec
spec = do
    describe "sumDigNthTerm" $ do
        dotest 1 10 [1, 2, 3, 4, 5, 6, 7, 8, 9]
        dotest 1 100 [1, 2, 3, 4, 5, 6, 7, 8, 9, 89]
        dotest 10 100  [89]
        dotest 90 100 []
        dotest 90 150 [135]
        dotest 50 150 [89, 135]
        dotest 10 150 [89, 135]

