module Kyu5.PickPeak where

data PickedPeaks = PickedPeaks {pos :: [Int], peaks :: [Int]} deriving (Eq, Show)

pickPeaks :: [Int] -> PickedPeaks
pickPeaks = go [] [] . clean . zip [0 ..]
  where
    go pos peaks ((i, x) : (j, y) : (k, z) : xs)
      | x < y && y >= z = go (pos ++ [j]) (peaks ++ [y]) further
      | otherwise = go pos peaks further
      where
        further = (j, y) : (k, z) : xs
    go pos peaks _ = PickedPeaks pos peaks

clean :: [(Int, Int)] -> [(Int, Int)]
clean [] = []
clean l@((i, x) : (j, y) : xs)
  | x == y = (i, x) : clean (dropWhile (\(_, x') -> x == x') . tail $ l)
  | otherwise = (i, x) : clean ((j, y) : xs)
clean xs = xs
