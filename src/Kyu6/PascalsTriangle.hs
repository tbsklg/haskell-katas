module Kyu6.PascalsTriangle where

pascalsTriangle :: Int -> [Int]
pascalsTriangle x = concat . take x . iterate createLine $ [1]
 where
  createLine xs = 1 : zipWith (+) xs (tail xs) ++ [1]
