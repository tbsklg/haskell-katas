module Kyu6.LongestconsecSpec (spec) where
import Kyu6.Longestconsec (longestConsec)  

import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testLong :: [String] -> Int -> String -> Spec
testLong arrs k u = 
    it (printf "should return longestConsec for arrs : %s k : %d " (show arrs) k) $
        longestConsec arrs k `shouldBe` u

main = hspec spec
spec = do
    
  describe "longestConsec" $ do
    testLong ["zone", "abigail", "theta", "form", "libe", "zas", "theta", "abigail"] 2 "abigailtheta"
    testLong ["ejjjjmmtthh", "zxxuueeg", "aanlljrrrxx", "dqqqaaabbb", "oocccffuucccjjjkkkjyyyeehh"] 1 "oocccffuucccjjjkkkjyyyeehh"
    testLong ["itvayloxrp","wkppqsztdkmvcuwvereiupccauycnjutlv","vweqilsfytihvrzlaodfixoyxvyuyvgpck"] 2 "wkppqsztdkmvcuwvereiupccauycnjutlvvweqilsfytihvrzlaodfixoyxvyuyvgpck"
    testLong ["wlwsasphmxx","owiaxujylentrklctozmymu","wpgozvxxiu"] 2 "wlwsasphmxxowiaxujylentrklctozmymu"
    testLong ["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"] 3 "ixoyx3452zzzzzzzzzzzz"
    testLong [] 3 ""
    testLong ["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"] 15 ""
    testLong ["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"] 0 ""

