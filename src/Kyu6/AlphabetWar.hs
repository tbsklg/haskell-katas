module Kyu6.AlphabetWar where

import Data.List (elemIndex)
import Data.Maybe (fromJust)

alphabetWar :: String -> String
alphabetWar = winner . foldl points (0, 0) . bombs
  where
    winner (l, r)
      | l > r = "Left side wins!"
      | l < r = "Right side wins!"
      | otherwise = "Let's fight again!"

    points (l, r) x
      | x `elem` "sbpw" = ((+) l . (+) 1 . fromJust . elemIndex x $ "sbpw", r)
      | x `elem` "zdqm" = (l, (+) r . (+) 1 . fromJust . elemIndex x $ "zdqm")
      | otherwise = (l, r)

    bombs [] = []
    bombs ('*' : '*' : xs) = bombs ('*' : xs)
    bombs ('*' : y : xs) = bombs xs
    bombs (x : '*' : '*' : xs) = bombs ('*' : xs)
    bombs (x : '*' : y : xs) = bombs xs
    bombs [x, '*'] = []
    bombs ['*'] = []
    bombs (x : xs) = x : bombs xs
