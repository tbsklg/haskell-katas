module Kyu7.ConsecutiveDifferences (differences) where

differences :: [Int] -> Int
differences [] = 0
differences l
  | (==) 1 . length . diffs $ l = head . diffs $ l
  | otherwise = differences . diffs $ l

diffs :: (Num a) => [a] -> [a]
diffs [] = []
diffs [x] = [x]
diffs [x, y] = [abs (x - y)]
diffs (x : y : ys) = abs (x - y) : diffs (y : ys)
