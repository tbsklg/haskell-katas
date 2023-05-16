module Kyu6.StatSpec where

import Kyu6.Stat

import Test.Hspec
import Text.Printf (printf)

testStat :: String -> String -> Spec
testStat a s = 
  it (printf "should return stat") $
    stat a `shouldBe` s

spec :: Spec
spec = do
    describe "stat" $ do        
   
        testStat "01|15|59, 1|47|16, 01|17|20, 1|32|34, 2|17|17" 
            "Range: 01|01|18 Average: 01|38|05 Median: 01|32|34"
        testStat "02|15|59, 2|47|16, 02|17|20, 2|32|34, 2|17|17, 2|22|00, 2|31|41" 
            "Range: 00|31|17 Average: 02|26|18 Median: 02|22|00"
  
