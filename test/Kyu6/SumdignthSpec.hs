module Kyu6.SumdignthSpec where
import Kyu6.Sumdignth

import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

dotest :: Int -> [Int] -> Int -> Int -> Spec
dotest initval patternl nthterm s = 
    it (printf "should return sumDigNthTerm for init, pattern, nthterm: %d %s %d result --> %d \n" initval (show patternl) nthterm s) $
        sumDigNthTerm initval patternl nthterm `shouldBe` s

spec :: Spec
spec = do
    describe "sumDigNthTerm" $ do
        dotest  10 [2, 1, 3] 6 10
        dotest  10 [2, 1, 3] 15 10
        dotest  10 [2, 1, 3] 50 9
        dotest  10 [2, 1, 3] 78 10
        dotest  10 [2, 1, 3] 157 7
