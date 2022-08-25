module Kyu7.SumAndMultiply where

sumAndMultiply :: Int -> Int -> [Int]
sumAndMultiply s m
  | null elems = []
  | otherwise = head elems
  where
    min
      | s == 0 || m == 0 = maximum [s, m]
      | otherwise = minimum [s, m]
    elems =
      filter (\[x, y] -> x + y == s && x * y == m)
        . combinations
        $ [0 .. min]

combinations :: [a] -> [[a]]
combinations [] = []
combinations l@(x : xs) = map (\y -> [x, y]) l ++ combinations xs

-- use find instead
