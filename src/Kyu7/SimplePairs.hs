module Kyu7.SimplePairs where 

pairs :: [Int] -> Int 
pairs [] = 0
pairs [_] = 0
pairs (x:y:xs)
    | abs (x - y) == 1 = 1 + pairs xs
    | otherwise = pairs xs
