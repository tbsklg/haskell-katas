module Kyu7.GuardingTheAlgoLandia (findNeededGuards) where

findNeededGuards :: [Bool] -> Int
findNeededGuards [] = 0
findNeededGuards (x : y : xs)
  | x || y = findNeededGuards (y : xs)
  | otherwise = 1 + findNeededGuards (True : xs)
findNeededGuards _ = 0
