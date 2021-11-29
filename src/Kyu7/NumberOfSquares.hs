module Kyu7.NumberOfSquares where

getNumberOfSquares :: Int -> Int
getNumberOfSquares i = length . takeWhile (< i) . scanl1 (+) $ [x ^ 2 | x <- [1 ..]]
