module Kyu6.PyramidArray where

pyramid :: Int -> [[Int]]
pyramid n = map (\x -> replicate x 1) [1..n]

