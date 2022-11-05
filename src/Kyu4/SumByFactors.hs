module Kyu4.SumByFactors where

import Data.List (nub, sort)

sumOfDivided :: [Integer] -> [(Integer, Integer)]
sumOfDivided xs = map (\p -> (p, sum . filter (\x -> mod x p == 0) $ xs)) primes
  where
    factor acc p n
      | n == 1 = acc
      | n `mod` p == 0 = factor (p : acc) p (n `div` p)
      | p * p > n = factor acc n n -- n is a prime number.
      | otherwise = factor acc (p + 1) n
    primes = sort . nub . concatMap (factor [] 2 . abs) $ xs
