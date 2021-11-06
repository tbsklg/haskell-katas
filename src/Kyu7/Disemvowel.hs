module Kyu7.Disemvowel where

disemvowel :: String -> String
disemvowel = filter (\x -> x `notElem` vowels)

vowels :: [Char]
vowels = "aeiouAEIOU"
