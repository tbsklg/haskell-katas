module Kyu6.Group10 where

import Data.List (sort)

groupIn10s :: [Int] -> [[Int]]
groupIn10s = go (cycle [0 ..]) . sort
 where
  go _ [] = []
  go (t : ts) xs = takeWhile (is10s t) xs : go ts (dropWhile (is10s t) xs)

  is10s t x = x `div` 10 == t
