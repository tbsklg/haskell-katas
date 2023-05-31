module Kyu6.EvenFibonacciSum (fibSum) where

fibSum :: Int -> Int
fibSum x = sum . filter even . takeWhile (<x) $ fibo

fibo :: [Int]
fibo = 0 : 1 : zipWith (+) fibo (tail fibo)
