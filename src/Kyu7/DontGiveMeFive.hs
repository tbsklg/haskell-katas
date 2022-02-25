module Kyu7.DontGiveMeFive where

dontGiveMeFive :: Int -> Int -> Int
dontGiveMeFive start end = length [x | x <- [start .. end], abs x `mod` 10 /= 5, abs x `div` 10 /= 5]
