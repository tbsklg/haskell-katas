module Kyu7.Swap where

firstReverseTry :: [Int] -> [Int]
firstReverseTry [] = []
firstReverseTry [x] = [x]
firstReverseTry [x, y] = [y, x]
firstReverseTry xs = [last xs] ++ others ++ [head xs]
  where
    others = tail . init $ xs
