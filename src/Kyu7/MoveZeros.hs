module Kyu7.MoveZeros where

moveZeroes :: Bool -> [Int] -> [Int]
moveZeroes isRight xs
    | isRight = withoutZeros ++ zeros
    | otherwise = zeros ++ withoutZeros
    where
        withoutZeros = filter (/= 0) xs
        zeros = filter (==0) xs
