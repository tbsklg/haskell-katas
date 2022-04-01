module Kyu7.MaxProduct where

solve :: [[Int]] -> Int
solve = maximum . map product . sequence . minAndMax

minAndMax :: (Foldable t, Ord a) => [t a] -> [[a]]
minAndMax [] = []
minAndMax xs = map (\x -> [minimum x, maximum x]) xs
