module Kyu7.SignChange (count) where

count :: (Num a, Ord a) => [a] -> Int
count [] = 0
count [_] = 0
count (x : y : ys)
  | x < 0 && y >= 0 = 1 + count (y : ys)
  | x >= 0 && y < 0 = 1 + count (y : ys)
  | otherwise = count (y : ys)
