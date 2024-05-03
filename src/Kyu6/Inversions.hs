module Kyu6.Inversions where

countInversions :: (Ord a) => [a] -> Int
countInversions xs = inversions xs
  where
    inversions [] = 0
    inversions (x : xs) = (length . filter (< x) $ xs) + inversions xs
