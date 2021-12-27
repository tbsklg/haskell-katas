module Kyu7.Counter (ones) where

ones :: [Int] -> [Int]
ones [] = []
ones (x:xs)
    | x == 1 = (length . takeWhile (==1) $ (x:xs)) : (ones . dropWhile (==1) $ (x:xs))
    | otherwise = ones . dropWhile (/= 1) $ (x:xs)

-- ones = fmap length . wordsBy (== 0)
