module Kyu6.LongestRepetitionSpec where

import Kyu6.LongestRepetition (longestRepetition)
import Test.Hspec

spec :: Spec
spec = describe "Example Tests" $
    it "should work work with example tests" $ do
        longestRepetition "aaaabb"      `shouldBe` Just ('a', 4)
        longestRepetition "bbbaaabaaaa" `shouldBe` Just ('a', 4)
        longestRepetition "cbdeuuu900"  `shouldBe` Just ('u', 3)
        longestRepetition "abbbbb"      `shouldBe` Just ('b', 5)
        longestRepetition "aabb"        `shouldBe` Just ('a', 2)
        longestRepetition ""            `shouldBe` Nothing
        
main :: IO ()
main = hspec spec

