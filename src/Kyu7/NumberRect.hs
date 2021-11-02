module Kyu7.NumberRect where

numberOfRectangles :: Int -> Int -> Int
numberOfRectangles m n = (m * n * (n + 1) * (m + 1)) `div` 4;
