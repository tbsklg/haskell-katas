module Kyu7.ChangingLetters (swap) where

import Data.Char (toUpper)

swap :: String -> String
swap = map capitalizeVowel
  where
    capitalizeVowel x
      | x `elem` "aeiou" = toUpper x
      | otherwise = x