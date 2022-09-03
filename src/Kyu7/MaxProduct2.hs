module Kyu7.MaxProduct2 where

import Data.Foldable (maximumBy)
import Data.Function (on)

maximumProduct :: [Integer] -> Integer
maximumProduct l = fst . maximumBy lowest . go (length l) $ l
  where
    go 0 _ = []
    go i (x : xs) = (x, product xs) : go (i - 1) (xs ++ [x])
    go _ _ = []

lowest :: (Integer, Integer) -> (Integer, Integer) -> Ordering
lowest (x, y) (x', y')
  | y == y' && x < x' = GT
  | y == y' && x > x' = LT
  | otherwise = compare y y'
