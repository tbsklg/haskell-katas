module Kyu7.BinarySxore where

sxore :: Integer -> Integer
sxore i
  | i `mod` 4 == 0 = i
  | i `mod` 4 == 1 = 1
  | i `mod` 4 == 2 = i + 1
  | i `mod` 4 == 3 = 0
  | otherwise = i
