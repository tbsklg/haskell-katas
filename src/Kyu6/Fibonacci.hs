module Kyu6.Fibonacci where

fib :: Int -> Integer
fib n = fibs !! (n - 1)
  where
    fibs = 0 : 1 : zipWith (+) fibs (tail fibs)
