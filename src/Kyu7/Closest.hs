module Kyu7.Closest where

closestMultiple10 :: Int -> Int
closestMultiple10 i
  | i `mod` 10 >= 5 = i + (10 - (i `mod` 10))
  | otherwise = i - (i `mod` 10)
