module Kyu7.BubblesortOnce (bubblesortOnce) where

bubblesortOnce :: [Int] -> [Int]
bubblesortOnce [] = []
bubblesortOnce [x] = [x]
bubblesortOnce (x : y : xs)
  | x > y = y : bubblesortOnce (x : xs)
  | otherwise = y : bubblesortOnce (x : xs)
