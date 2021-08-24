module Kyu7.FindNextSquare (findNextSquare) where

findNextSquare :: Integer -> Integer
findNextSquare i
    | isPerfectSquare i = nextSide * nextSide
    | otherwise = -1
    where
        nextSide = (squareSide i) + 1

isPerfectSquare :: Integer -> Bool
isPerfectSquare n = (squareSide n) * (squareSide n) == n

squareSide :: Integer -> Integer
squareSide n = floor $ sqrt $ (fromIntegral n::Double)
