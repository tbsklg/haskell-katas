module Kyu5.Fibonacci where

fibonacci :: Int -> Integer
fibonacci n = (xs !! (n - 1)) + (xs !! (n - 2))
  where
    xs = 0 : 1 : map fibonacci [2 ..]
