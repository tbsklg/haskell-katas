module Kyu6.LongestAlphabeticalSubstring (longest) where

import Data.Function (on)
import Data.List (groupBy, maximumBy)

longest :: String -> String
longest = maximumBy (compare `on` length) . reverse . alphabeticSubstrings
  where
    alphabeticSubstrings [] = []
    alphabeticSubstrings xs = extractSubstring xs : (alphabeticSubstrings . skipSubstring $ xs)

    extractSubstring [] = []
    extractSubstring [x] = [x]
    extractSubstring (x : y : xs)
      | x <= y = x : extractSubstring (y : xs)
      | otherwise = [x]

    skipSubstring [] = []
    skipSubstring [x] = []
    skipSubstring (x : y : xs)
      | x <= y = skipSubstring (y : xs)
      | otherwise = y : xs
