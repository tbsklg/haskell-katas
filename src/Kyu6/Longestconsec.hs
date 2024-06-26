module Kyu6.Longestconsec where

import Data.Function (on)
import Data.List (maximumBy, tails)

longestConsec :: [String] -> Int -> String
longestConsec strarr k
  | null parts = ""
  | otherwise = maximumBy compareLength parts
  where
    parts = map (concat . take k) . filter (\x -> length x >= k) . tails $ strarr

    compareLength :: String -> String -> Ordering
    compareLength x y
      | length x == length y = GT
      | otherwise = compare (length x) (length y)
