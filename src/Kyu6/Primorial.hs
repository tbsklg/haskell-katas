module Kyu6.Primorial where

numPrimorial :: Int -> Integer
numPrimorial n = product $ take n primes

primes :: [Integer]
primes = filter isPrime $ [2 ..]
  where
    isPrime :: Integer -> Bool
    isPrime n = all (\x -> n `mod` x /= 0) [2 .. n - 1]
