module Kyu7.NumberClimber where

climb :: Int -> [Int]
climb 0 = []
climb n = climb (n `div` 2) ++ [n]
