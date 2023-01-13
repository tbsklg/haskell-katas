module Kyu6.FindMissing where

findMissing :: Integral n => [n] -> n
findMissing (x:y:z:xs) 
    | abs (y - x) == abs (z - y) = findMissing (y:z:xs)
    | abs (y - x) < abs (z - y) = y + (y - x)
    | otherwise = x + (z - y)
findMissing _ = 0    
