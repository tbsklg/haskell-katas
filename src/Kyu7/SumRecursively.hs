module Kyu7.SumRecursively where

sumR :: [Int] -> Int
sumR [] = 0
sumR (x : xs) = x + sumR xs
