module Kyu7.AddingParameters where

add :: (Num c, Enum c) => [c] -> c
add = sum . zipWith (*) [1 ..]
