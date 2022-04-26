module Kyu7.FilterCoffeeSpec where
import Kyu7.FilterCoffee (search)

import Data.List 

import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testSearch :: Int -> [Int] -> String -> Spec
testSearch b p s = 
    it (printf "should return search for budget: %d, prices: %s " b (show p)) $
        search b p `shouldBe` s

spec :: Spec
spec = do
    describe "Search: Basic Tests" $ do 
        testSearch 3 [6, 1, 2, 9, 2] "1,2,2"
        testSearch 14 [7, 3, 23, 9, 14, 20, 7] "3,7,7,9,14"
