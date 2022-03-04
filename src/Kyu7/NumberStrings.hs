module Kyu7.NumberStrings where

import Data.Char (isNumber)

solve :: [Char] -> Int
solve = maximum . extract

extract :: [Char] -> [Int]
extract [] = []
extract c@(x : _)
  | isNumber x = (read . takeWhile isNumber $ c) : (extract . dropWhile isNumber $ c)
  | otherwise = extract . dropWhile (not . isNumber) $ c

-- solve = maximum . map read . wordsBy (not . isDigit)
