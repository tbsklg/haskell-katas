module Kyu7.GeneratePairs where

generatePairs :: Int -> [[Int]]
generatePairs n = filter (\[x, y] -> x <= y) [[x, y] | x <- [0 .. n], y <- [0 .. n]]

-- generatePairs n = [[i, j] | i <- [0..n], j <- [i..n]]
