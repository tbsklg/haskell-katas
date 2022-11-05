module Kyu7.TramCapacity where

tram :: Int -> [Int] -> [Int] -> Int
tram stops descending =
  maximum
    . take stops
    . tail
    . scanl (\y (d, o) -> y + (o - d)) 0
    . zip descending
