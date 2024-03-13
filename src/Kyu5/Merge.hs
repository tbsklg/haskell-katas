module Kyu5.Merge where

merge :: Ord a => [a] -> [a] -> [a]
merge [] [] = []
merge [] ys = ys
merge xs [] = xs
merge l@(x:xs) r@(y:ys)
  | x < y = x : merge xs r
  | otherwise = y : merge l ys
