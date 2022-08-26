module Kyu7.Cake2 where

cakeSlice :: Int -> Int
cakeSlice n = scanl (+) 1 [1 ..] !! n
