module Kyu5.Josephus where
import Debug.Trace

josephusSurvivor :: Int -> Int -> Int
josephusSurvivor n k = go [1 .. n]
  where
    go [x] = x
    go xs = go . dropNth k $ xs

dropNth :: Int -> [a] -> [a]
dropNth n xs = drop at xs ++ take (at - 1) xs
  where
    at
      | n `mod` length xs == 0 = length xs
      | otherwise = n `mod` length xs
