module Kyu7.NthRoot where

-- https://stackoverflow.com/questions/42708132/haskell-find-the-nth-root-of-a-float
root :: Double -> Double -> Double
root x n = x ** (1 / n)
