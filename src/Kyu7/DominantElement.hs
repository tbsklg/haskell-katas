module Kyu7.DominantElement where 

solve :: [Int] -> [Int]
solve [] = []
solve (x:xs)
    | foldl (\y z -> y && z < x) True xs = x : solve xs
    | otherwise = solve xs
