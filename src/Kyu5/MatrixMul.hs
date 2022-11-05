module Kyu5.MatrixMul where

import Data.List (transpose)

type Mat a = [[a]]

matMul :: Num a => Mat a -> Mat a -> Mat a
matMul a b = multiply a rotated
  where
    multiply (x : xs) (y : ys) = row x (y : ys) : multiply xs (y : ys)
    multiply _ _ = []

    row x [] = []
    row x (y : ys) = (sum . zipWith (*) x $ y) : row x ys

    rotated = transpose b

-- matMul xs ys = [[sum $ zipWith (*) x y | y <- transpose ys] | x <- xs]
