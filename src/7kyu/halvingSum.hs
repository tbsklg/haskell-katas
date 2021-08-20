module Kata (halvingSum) where

halvingSum :: Int -> Int
halvingSum x = sum $ takeWhile (>0) (iterate (`div` 2) x)
