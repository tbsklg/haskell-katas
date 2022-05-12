module Kyu7.Unflatten where

unflatten :: [Int] -> [[Int]]
unflatten [] = []
unflatten (x : xs)
  | x < 3 = [x] : unflatten xs
  | otherwise = take x (x : xs) : (unflatten . drop x $ (x : xs))
