module Kyu7.PonyExpress where

riders :: [Int] -> Int
riders s = numberOfRiders s 0
  where
    numberOfRiders [] _ = 0
    numberOfRiders (x : ys) 0 = 1 + numberOfRiders ys x
    numberOfRiders (x : ys) n
      | x + n <= 100 = numberOfRiders ys (x + n)
      | otherwise = numberOfRiders (x : ys) 0
