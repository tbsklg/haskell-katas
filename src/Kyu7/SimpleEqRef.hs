module Kyu7.SimpleEqRef where

import Data.Char (isDigit)

solve :: String -> String
solve [] = []
solve (x : xs)
  | isDigit x = solve (dropWhile isDigit xs) ++ x : takeWhile isDigit xs
  | otherwise = solve xs ++ [x]
