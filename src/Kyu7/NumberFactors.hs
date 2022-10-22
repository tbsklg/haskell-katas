module Kyu7.NumberFactors where

getFactors :: Int -> [Int]
getFactors n = filter (\x -> n `mod` x == 0) [1 .. n]
