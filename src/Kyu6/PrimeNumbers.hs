module Kyu6.PrimeNumbers where

getPrimes :: Int -> [Int]
getPrimes n = take n primes

primes :: [Int]
primes = [x | x <- [2 ..], all (\y -> x `mod` y /= 0) [2 .. floor . sqrt . fromIntegral $ x]]
