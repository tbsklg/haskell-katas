module Kyu6.PyramidArray where

pyramid :: Int -> [[Int]]
pyramid n = map (`replicate` 1) [1 .. n]
