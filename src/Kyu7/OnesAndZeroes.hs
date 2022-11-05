module Kyu7.OnesAndZeroes (toNumber) where

toNumber :: [Int] -> Int
toNumber x = foldl (\x y -> x + fst y * 2 ^ snd y) 0 $ zip (reverse x) [0 ..]
