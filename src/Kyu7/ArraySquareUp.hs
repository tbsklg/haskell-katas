module Kyu7.ArraySquareUp (squareUp) where

squareUp :: Int -> [Int]
squareUp x = [0 .. x - 1] >>= \i -> reverse $ [1 .. i + 1] ++ replicate (x - i - 1) 0
