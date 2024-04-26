module Kyu5.GapInPrimes where

import Data.List (find)
import Data.Maybe (fromMaybe)

type Gap = Integer
type From = Integer
type To = Integer

type Primes = [Integer]
type Prime = Integer

gap :: Gap -> From -> To -> Maybe (Prime, Prime)
gap g m n = find gap' $ zip primes' (fromMaybe [] $ tailMay primes')
  where
    gap' (x, y) = y - x == g
    primes' = primes m n

tailMay :: [a] -> Maybe [a]
tailMay [] = Nothing
tailMay (_:xs) = Just xs

primes :: From -> To -> Primes
primes m n = [x | x <- [m .. n], all (\y -> x `mod` y /= 0) [2 .. floor . sqrt . fromIntegral $ x]]

