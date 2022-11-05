module Kyu7.PolynomialAdd where

polyAdd :: [Int] -> [Int] -> [Int]
polyAdd [] [] = []
polyAdd [] ys = ys
polyAdd xs [] = xs
polyAdd (x : xs) (y : ys) = (x + y) : polyAdd xs ys
