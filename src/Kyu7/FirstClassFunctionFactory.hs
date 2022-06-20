module Kyu7.FirstClassFunctionFactory where

factory :: Int -> [Int] -> [Int]
factory x = map (* x)
