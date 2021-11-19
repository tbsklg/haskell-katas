module Kyu7.GCDSum where

solve :: Int -> Int -> Maybe (Int, Int)
solve s g = calculateNumbers s g 
    where
        calculateNumbers s c
            | gcd' c (s - c) == g = Just (c, (s - c))
            | (s - c) < c = Nothing
            | otherwise = calculateNumbers s (c + 1)

gcd' x y
    | y == 0 = x
    | otherwise = gcd' y (x `rem` y)
