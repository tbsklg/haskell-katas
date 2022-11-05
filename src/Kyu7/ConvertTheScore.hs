module Kyu7.ConvertTheScore (scoreboard) where

import Data.Maybe (fromJust)

scoreboard :: String -> (Int, Int)
scoreboard xs = (home, away)
  where
    home = fromJust . flip lookup score . head . filter isNum . words $ xs
    away = fromJust . flip lookup score . last . filter isNum . words $ xs

isNum :: [Char] -> Bool
isNum x = x `elem` nums

nums :: [[Char]]
nums = map fst score

score :: [([Char], Int)]
score =
  [ ("nil", 0),
    ("one", 1),
    ("two", 2),
    ("three", 3),
    ("four", 4),
    ("five", 5),
    ("six", 6),
    ("seven", 7),
    ("eight", 8),
    ("nine", 9)
  ]
