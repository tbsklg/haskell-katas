module Kyu7.SequenceSum2 where

sumOfN :: Int -> [Int]
sumOfN n = map (\x -> signum n * x * (x + 1) `div` 2) [0 .. abs n]
