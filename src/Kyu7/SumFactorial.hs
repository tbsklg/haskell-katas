module Kyu7.SumFactorial (sumFactorial) where

sumFactorial :: [Integer] -> Integer
sumFactorial s = sum . map factorial $ s

factorial n = foldl (\x y -> x * y) 1 [1 .. n]
