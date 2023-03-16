module Kyu6.TheShellGame where

findTheBall :: Int -> [(Int, Int)] -> Int
findTheBall position [] = position
findTheBall position ((from, to):xs)
    | position == from = findTheBall to xs
    | position == to = findTheBall from xs
    | otherwise = findTheBall position xs
 