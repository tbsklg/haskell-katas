module Kyu7.FixString where

import Data.Char (isLower, isUpper, toLower, toUpper)
import Data.List (partition)

solve :: String -> String
solve s
  | upper > lower = map toUpper s
  | otherwise = map toLower s
  where
    lower = length $ fst $ partition isLower s
    upper = length $ fst $ partition isUpper s
