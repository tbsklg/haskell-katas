module Kyu7.Triangular where

triangular :: Integer -> Integer
triangular n
  | n < 0 = 0
  | otherwise = (n * (n + 1)) `div` 2
