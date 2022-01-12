module Kyu7.MinMax2 where

minMax :: (Ord a) => [a] -> (a, a)
minMax xs = (minimum xs, maximum xs)
