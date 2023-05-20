module Kyu6.PileOfCubes where

findNb :: Integer -> Integer
findNb = findNb' 1 0
  where
    findNb' n s m
      | s == m = n - 1
      | s > m = -1
      | otherwise = findNb' (n + 1) (s + n ^ 3) m
