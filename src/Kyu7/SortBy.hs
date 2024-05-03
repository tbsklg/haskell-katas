module Kyu7.SortBy where

import Data.List (sortBy)

last' :: String -> [String]
last' = sortBy lastChar . words

lastChar :: (Ord a) => [a] -> [a] -> Ordering
lastChar a b
  | last a <= last b = LT
  | otherwise = GT

-- last' = sortOn last . words
