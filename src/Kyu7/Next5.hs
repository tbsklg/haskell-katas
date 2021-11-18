module Kyu7.Next5 where

roundToNext5 :: Int -> Int
roundToNext5 n = head . dropWhile (\x -> x `mod` 5 /= 0) $ [n ..]
