module Kyu7.SumString where

import Data.Char (digitToInt, isDigit)

sumFromString :: String -> Integer
sumFromString = sum . map read . ints

ints :: [Char] -> [[Char]]
ints [] = []
ints z@(x : xs)
  | isDigit x = takeWhile isDigit z : ints (dropWhile isDigit z)
  | otherwise = ints xs

-- wordsBy (not . isDigit)
