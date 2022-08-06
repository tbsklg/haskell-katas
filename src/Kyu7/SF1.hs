module Kyu7.SF1 where

arrayPreviousLess :: [Int] -> [Int]
arrayPreviousLess l = go l []
  where
    go [] _ = []
    go (x : xs) [] = -1 : go xs [x]
    go a@(x : xs) b@(y : ys)
      | y < x = y : go xs (x : b)
      | otherwise = go a ys
