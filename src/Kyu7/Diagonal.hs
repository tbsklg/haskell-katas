module Kyu7.Diagonal where

diagonalSum :: [[Int]] -> Int
diagonalSum xs = sum . map (\x -> xs !! x !! x) $ [0 .. (length xs - 1)]
