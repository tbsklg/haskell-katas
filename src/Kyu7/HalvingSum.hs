module Kyu7.HalvingSum where

halvingSum :: Int -> Int
halvingSum x = sum $ takeWhile (>0) (iterate (`div` 2) x)
