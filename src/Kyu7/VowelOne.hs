module Kyu7.VowelOne where

vowelOne :: String -> String
vowelOne = map vowelOne'
    where
    vowelOne' x
        | x `elem` vowel = '1'
        | otherwise = '0'

vowel :: [Char]
vowel = "aeiouAEIOU"
