module Kyu7.Sliding where

sliding :: [Int] -> Int -> [Int]
sliding [] _ = []
sliding xs n
    | length xs < n = []
    | otherwise = maximum (take n xs) : sliding (tail xs) n

-- use divvy
