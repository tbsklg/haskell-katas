module Kyu7.Squares2 where

squares :: Integer -> Int -> [Integer]
squares x n = take n . iterate (^ 2) $ x
