module Kyu7.BreakingChocolate where

breakChocolate :: Int -> Int -> Int
breakChocolate n m
  | n <= 0 || m <= 0 = 0
  | otherwise = n * m - 1
