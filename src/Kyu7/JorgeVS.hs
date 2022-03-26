module Kyu7.JorgeVS where

cartesianNeighbor :: Int -> Int -> [(Int, Int)]
cartesianNeighbor i j = filter (/= (i, j)) . cartProd [(i - 1) .. (i + 1)] $ [(j - 1) .. (j + 1)]

cartProd :: [a] -> [b] -> [(a, b)]
cartProd xs ys = [(x, y) | x <- xs, y <- ys]
