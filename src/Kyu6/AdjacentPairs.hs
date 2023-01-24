module Kyu6.AdjacentPairs where

import Data.Char (toLower)

countAdjacentPairs :: String -> Int
countAdjacentPairs = go . map (map toLower) . words
  where
    go [] = 0
    go [x] = 0
    go curr@(x : y : xs)
      | x == y = 1 + (go . dropWhile (== x) $ curr)
      | otherwise = go (y : xs)
