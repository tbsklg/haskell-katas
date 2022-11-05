module Kyu6.Difference where

difference :: Eq a => [a] -> [a] -> [a]
difference [] _ = []
difference (x : xs) b
  | x `elem` b = difference xs b
  | otherwise = x : difference xs b
