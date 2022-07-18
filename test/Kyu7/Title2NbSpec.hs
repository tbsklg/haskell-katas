module Kyu7.Title2NbSpec where
import Kyu7.Title2Nb (titleToNb)

import Data.Char    

import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testtitleToNb :: String -> Integer -> Spec
testtitleToNb strg s = 
    it (printf "should return titleToNb for string: %s" strg) $
        titleToNb strg `shouldBe` s
    
spec :: Spec
spec = do
    describe "titleToNb: Basic Tests" $ do     
        testtitleToNb "A" 1
        testtitleToNb "Z" 26 
        testtitleToNb "AA" 27
        testtitleToNb "AZ" 52
        testtitleToNb "BA" 53
        testtitleToNb "CODEWARS" 28779382963
