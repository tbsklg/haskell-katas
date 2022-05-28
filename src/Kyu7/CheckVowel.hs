module Kyu7.CheckVowel where

checkVowel :: String -> Int -> Bool
checkVowel xs index =
  index >= 0
    && index < length xs
    && (xs !! index) `elem` "aeiouAEIOU"
