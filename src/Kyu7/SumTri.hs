module Kyu7.SumTri where

sunTriNumbers :: Integer -> Integer
sunTriNumbers n
  | n < 0 = 0
  | otherwise = sum $ map gauss [1 .. n]

gauss :: Integral a => a -> a
gauss n = n * (n + 1) `div` 2
