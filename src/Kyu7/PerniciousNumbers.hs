module Kyu7.PerniciousNumbers where

import Data.Bits (popCount)

class PerniciousNumbers a where
  pernicious :: a -> Either String [Int]

instance PerniciousNumbers Int where
  pernicious n = intPernicious n

instance PerniciousNumbers Float where
  pernicious f = floatPernicious f

intPernicious :: Int -> Either String [Int]
intPernicious i
  | null primes = Left "No pernicious numbers"
  | otherwise = Right primes
  where
    primes = filter (isPrime . popCount) [0 .. i]

floatPernicious :: Float -> Either String [Int]
floatPernicious i
  | null primes = Left "No pernicious numbers"
  | otherwise = Right primes
  where
    primes = filter (isPrime . popCount) [0 .. floor i]

isPrime :: (Integral a) => a -> Bool
isPrime 0 = False
isPrime 1 = False
isPrime i = all (\x -> i `mod` x > 0) [2 .. (i - 1)]
