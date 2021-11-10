module Kyu7.SevenAte9 where

import Data.List.Split (splitOn)

sevenAte9 :: String -> String
sevenAte9 [] = []
sevenAte9 [x] = [x]
sevenAte9 [x, y] = [x, y]
sevenAte9 (x : y : ys)
  | x == '7' && y == '9' && head ys == '7' = x : sevenAte9 ys
  | otherwise = x : sevenAte9 (y : ys)
