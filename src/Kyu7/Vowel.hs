module Kyu7.Vowel where

getCount :: String -> Int
getCount = length . filter (`elem` "aeiou")
