module Kyu7.SmallEnough where

smallEnough :: [Int] -> Int -> Bool
smallEnough xs v = foldr (\x a -> a && x <= v) True xs

-- smallEnough xs v = all (<= v) xs
