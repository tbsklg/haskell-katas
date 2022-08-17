module Kyu7.Sum2Total where

total :: Num a => [a] -> a
total [x] = x
total xs = total . zipWith(+) xs . tail $ xs
