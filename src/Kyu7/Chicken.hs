module Kyu7.Chicken where

chickenOptions :: Int -> [Int]
chickenOptions n = takeWhile (<= n) ([0, 3, 6, 9, 10, 12, 13, 15, 16] ++ [18 ..])
