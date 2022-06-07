module Kyu7.Compound where

compoundArray :: [a] -> [a] -> [a]
compoundArray xs [] = xs
compoundArray [] ys = ys
compoundArray (x : xs) (y : ys) = [x] ++ [y] ++ compoundArray xs ys
