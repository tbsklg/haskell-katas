module Kyu5.WeightSort where

import Data.List (sortBy)

orderWeight :: [Char] -> [Char]
orderWeight =
  unwords
    . sortBy weight
    . words

weight :: String -> String -> Ordering
weight a b
  | sumDigits a == sumDigits b && a < b = LT
  | sumDigits a < sumDigits b = LT
  | otherwise = GT

sumDigits :: String -> Integer
sumDigits = sum . digits . read

digits :: Integral a => a -> [a]
digits 0 = []
digits n = digits (n `div` 10) ++ [n `mod` 10]
