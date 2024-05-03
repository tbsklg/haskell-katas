module Kyu6.Rank where

import Data.Char (ord, toLower)
import Data.List (sortBy)
import Data.List.Split (splitOn)
import Debug.Trace (traceShow)

rank :: [Char] -> [Int] -> Int -> [Char]
rank st we n
  | null st = "No participants"
  | n > length players = "Not enough participants"
  | otherwise = traceShow (scores) fst $ scores !! (n - 1)
  where
    rank (a, b) (c, d)
      | b == d = compare a c
      | b > d = LT
      | otherwise = GT

    scores = sortBy rank . zip players . zipWith (*) (map som players) $ we
    players = splitOn "," st

    som x = (+) (length x) . sum . map (alphabetPosition . toLower) $ x
    alphabetPosition x = ord x - ord 'a' + 1
