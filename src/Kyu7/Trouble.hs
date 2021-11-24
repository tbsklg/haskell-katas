module Kyu7.Trouble where

trouble :: [Int] -> Int -> [Int]
trouble xs n = filterTrouble xs
  where
    filterTrouble [] = []
    filterTrouble [x] = [x]
    filterTrouble (x : y : ys)
      | x + y == n = filterTrouble (x: ys)
      | otherwise = x : filterTrouble (y : ys)
