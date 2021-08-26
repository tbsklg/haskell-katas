module Kyu7.Fibonacci (fib) where

fib :: Int -> Int
fib n = fibAt (n - 1)

fibAt :: Int -> Int
fibAt 0 = 1
fibAt 1 = 1
fibAt n = fibAt (n - 1) + fibAt (n - 2)

-- fibs :: [Int]
-- fibs = 1 : 1 : zipWith (+) fibs (tail fibs)
