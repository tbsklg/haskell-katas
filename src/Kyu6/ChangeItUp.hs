module Kyu6.ChangeItUp (change) where

import Data.Char (isAlpha, toLower, toUpper)

change :: String -> String
change = map ((capitalizeVowel . (\x -> if isAlpha x then shift x else x)) . toLower)
  where
    shift 'z' = 'a'
    shift x = succ x

    capitalizeVowel x
      | x `elem` "aeiou" = toUpper x
      | otherwise = x
