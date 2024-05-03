module Kyu6.LastSurvivors (lastSurvivors) where

import Data.List (delete)

lastSurvivors :: String -> String
lastSurvivors xs
  | xs' == xs = xs
  | otherwise = lastSurvivors xs'
  where
    xs' = reduceDuplicates xs

reduceDuplicates :: String -> String
reduceDuplicates (x : xs)
  | elem x xs = reduceDuplicates $ nextLetter x : delete x xs
  | otherwise = x : reduceDuplicates xs
  where
    nextLetter 'z' = 'a'
    nextLetter x = succ x
reduceDuplicates [] = []
