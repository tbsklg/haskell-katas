module Kyu7.Folding where

folding :: Int -> Int -> Integer
folding a b
  | b > a = 1 + folding a (b - a)
  | b < a = 1 + folding (a - b) b
  | otherwise = 1
