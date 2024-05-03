module Kyu6.MyLists where

foldList :: [Int] -> Int -> [Int]
foldList xs 0 = xs
foldList xs n = foldList nextToFold (n - 1)
  where
    nextToFold
      | odd $ length xs = sumOfPairs ++ [xs !! half]
      | otherwise = sumOfPairs

    sumOfPairs = zipWith (+) left (reverse right)

    left = take half xs

    right
      | odd $ length xs = drop (half + 1) xs
      | otherwise = drop half xs

    half = length xs `div` 2
