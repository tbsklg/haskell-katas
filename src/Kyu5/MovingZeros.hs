module Kyu5.MovingZeros (moveZeros) where

moveZeros :: [Int] -> [Int]
moveZeros xs = withoutZeros ++ zeros
  where
    zeros = filter (== 0) xs
    withoutZeros = filter (/= 0) xs
