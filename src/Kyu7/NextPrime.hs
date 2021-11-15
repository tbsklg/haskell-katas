module Kyu7.NextPrime where 

import Data.Numbers.Primes (primes)

nextPrime :: Integer -> Integer
nextPrime n = head . dropWhile (<= n) $ primes

-- nextPrime :: Integer -> Integer
-- nextPrime n = head . dropWhile (<= n) . sieve $ [2 ..]

-- sieve :: Integral a => [a] -> [a]
-- sieve [] = []
-- sieve (p : xs) = p : sieve [x | x <- xs, x `mod` p > 0]
