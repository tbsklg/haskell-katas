module Kyu7.Dictionaries where

import Data.List (sortBy)

sortDict :: (Ord v) => [(k, v)] -> [(k, v)]
sortDict = reverse . sortBy sndFst

sndFst (x, y) (x', y')
  | y == y' = LT
  | otherwise = compare y y'
