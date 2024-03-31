module Kyu7.CatsAndShelves (solve) where

solve :: Word -> Word -> Word
solve f t
  | f == t = 0
  | t - f >= 3 = 1 + solve (f + 3) t
  | otherwise = 1 + solve (f + 1) t

