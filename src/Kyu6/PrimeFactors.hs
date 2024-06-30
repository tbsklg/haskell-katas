module Kyu6.PrimeFactors where

primeFactors :: Integer -> [Integer]
primeFactors n =
  let f = head [x | x <- [2 .. n], n `mod` x == 0]
   in if n == 1 then [] else f : primeFactors (n `div` f)
