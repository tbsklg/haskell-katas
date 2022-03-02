module Kyu6.DataReverse where

dataReverse :: [Int] -> [Int]
dataReverse [] = []
dataReverse l = dataReverse (drop 8 l) ++ take 8 l

-- dataReverse = concat . reverse . chunksOf 8
