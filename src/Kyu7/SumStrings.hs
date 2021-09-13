module Kyu7.SumStrings where

import Data.Char (isDigit)

sumOfIntegersInString :: [Char] -> Int
sumOfIntegersInString s = sum $ extractNumbers s

extractNumbers :: [Char] -> [Int]
extractNumbers [] = []
extractNumbers (x : xs)
  | isDigit x = (read (x : takeWhile isDigit xs) :: Int) : extractNumbers (dropWhile isDigit (x : xs))
  | otherwise = extractNumbers xs

-- sumOfIntegersInString :: [Char] -> Int
-- sumOfIntegersInString = sum . map read . filter (all isDigit) . groupBy (on (&&) isDigit)
