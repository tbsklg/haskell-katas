module Kyu6.TwoSum (twoSum) where

twoSum :: [Int] -> Int -> (Int, Int)
twoSum xs s = findSum indexed (tail indexed)
  where
    findSum xs [] = findSum (tail xs) (tail . tail $ xs)
    findSum ((i, x) : xs) ((j, y) : ys)
      | x + y == s = (i, j)
      | otherwise = findSum ((i, x) : xs) ys
    findSum _ _ = error "No pair found!"

    indexed = zip [0 ..] xs
