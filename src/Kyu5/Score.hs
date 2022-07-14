module Kyu5.Score where

score :: [Int] -> Int
score [] = 0
score l@(x : xs) = score' . length . filter (== x) $ l
  where
    score' 3
      | x == 1 = 1000 + score (filter (/=x) xs)
      | otherwise = x * 100 + score (filter (/=x) xs)
    score' _
      | x == 1 = 100 + score xs
      | x == 5 = 50 + score xs
      | otherwise = score xs
  