module Kyu7.MaxAdj where

adjacentElementProduct :: [Integer] -> Integer
adjacentElementProduct = maximum . products
  where
    products [] = []
    products [x] = []
    products [x, y] = [x * y]
    products (x : y : ys) = (x * y) : products (y : ys)
