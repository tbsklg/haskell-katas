module Kyu6.SelectiveArrayReversing (selReverse) where

selReverse :: Int -> [a] -> [a]
selReverse _ [] = []
selReverse l xs = reverse (take l xs) ++ selReverse l (drop l xs)
