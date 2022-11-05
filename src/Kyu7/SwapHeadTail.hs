module Kyu7.SwapHeadTail where

swapHeadAndTail :: [Int] -> [Int]
swapHeadAndTail xs
  | odd . length $ xs = drop (middle + 1) xs ++ [xs !! middle] ++ take middle xs
  | otherwise = drop middle xs ++ take middle xs
  where
    middle = length xs `div` 2
