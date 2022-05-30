module Kyu7.Numbers2 where

abundantNumber :: Int -> Bool
abundantNumber n = (<) n . sum . numbers $ n

numbers :: Int -> [Int]
numbers x = filter(\y -> x `mod` y == 0) [1 .. (x - 1)]
