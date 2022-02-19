module Kyu7.PairZeros (pairZeros) where

import Data.List (find)

pairZeros :: [Int] -> [Int]
pairZeros [] = []
pairZeros (x : xs)
  | x == 0 = case find (== 0) xs of
    Just a -> x : takeWhile (/= 0) xs ++ pairZeros (tail . dropWhile (/= 0) $ xs)
    Nothing -> x : pairZeros xs
  | otherwise = x : pairZeros xs
