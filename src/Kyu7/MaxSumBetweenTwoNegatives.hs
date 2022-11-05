module Kyu7.MaxSumBetweenTwoNegatives (maxSumBetweenTwoNegatives) where

maxSumBetweenTwoNegatives :: [Int] -> Maybe Int
maxSumBetweenTwoNegatives s
  | not $ null . slice $ s = Just $ maximum . slice $ s
  | otherwise = Nothing

negatives :: (Ord a, Num a) => [a] -> Int
negatives = length . filter (< 0)

slice :: (Ord a, Num a) => [a] -> [a]
slice [] = []
slice [x] = []
slice (x : xs)
  | negatives (x : xs) > 1 && x < 0 = sum (takeWhile (>= 0) xs) : slice (dropWhile (> 0) xs)
  | otherwise = slice (dropWhile (> 0) xs)
