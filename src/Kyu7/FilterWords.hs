module Kyu7.FilterWords where

import Data.Char (toLower, toUpper)

filterWords :: String -> String
filterWords = sentence . unwords . words
  where
    sentence "" = ""
    sentence (x : xs) = toUpper x : map toLower xs
