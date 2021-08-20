module Kyu7.Factorial where

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- factorial n = product [1..n]
