module Kyu7.InverseSlicer where

inverseSlice :: [a] -> Int -> Int -> [a]
inverseSlice l f t = take f l ++ drop t l
