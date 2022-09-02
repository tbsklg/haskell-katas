module Kyu7.Final where

finalAttackValue :: Int -> [Int] -> Int
finalAttackValue = foldl fight
  where
    fight u m
      | u >= m = u + m
      | otherwise = u + gcd u m
