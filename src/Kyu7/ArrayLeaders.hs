module Kyu7.ArrayLeaders where

arrayLeaders :: [Integer] -> [Integer]
arrayLeaders [] = []
arrayLeaders (x : xs)
  | isLeader = x : arrayLeaders xs
  | otherwise = arrayLeaders xs
  where
    isLeader = x > sum xs
