module Kyu7.RelativePrimes where

relativelyPrime :: (Integral t) => t -> [t] -> [t]
relativelyPrime n = filter (\x -> gcd x n == 1)
