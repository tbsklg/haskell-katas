module Kyu5.LongestCommonSubsequence where

import Data.List (intersect, maximumBy, tails)
import Data.Ord (comparing)
import Data.Char (ord, isAlphaNum)

lcs :: String -> String -> String
lcs [] _ = []
lcs _ [] = []
lcs (x:xs) (y:ys)
  | x == y = x : lcs xs ys
  | otherwise = maximumBy (comparing length) [lcs (x:xs) ys, lcs xs (y:ys)]
