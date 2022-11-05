module Kyu7.RemoveDups where

import Data.List (nub, sort)

solve :: [Int] -> [Int]
solve [] = []
solve (x : xs)
  | x `elem` xs = solve xs
  | otherwise = x : solve xs
