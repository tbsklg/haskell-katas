module Kyu7.LongestVowel where

import Data.List.Split (splitWhen)

solve :: String -> Int
solve s = maximum $ map length $ splitWhen (`notElem` vowel) s

vowel :: [Char]
vowel = "aeiou"
