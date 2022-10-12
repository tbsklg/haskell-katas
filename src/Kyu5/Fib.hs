module Kyu5.Fib where

-- | Returns a pair of consecutive Fibonacci numbers a b,
--   where (a*b) is equal to the input, or proofs that the
--   number isn't a product of two consecutive Fibonacci
--   numbers.
productFib :: Integer -> (Integer, Integer, Bool)
productFib n = findNumbers fibonacciNumbers
  where
    findNumbers [] = (0, 0, False)
    findNumbers [x] = (0, 0, False)
    findNumbers (x : y : xs)
      | x * y < n = findNumbers (y : xs)
      | x * y == n = (x, y, True)
      | otherwise = (x, y, False)

fibonacciNumbers :: [Integer]
fibonacciNumbers = 0 : go
    where
        go = 1 : 1 : zipWith (+) go (tail go)
