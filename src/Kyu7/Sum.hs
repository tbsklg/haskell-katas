module Kyu7.Sum where

sumTimesTables :: [Integer] -> Integer -> Integer -> Integer
sumTimesTables [] _ _ = 0
sumTimesTables (x : xs) n m = (sum . map (* x) $ [n .. m]) + sumTimesTables xs n m
