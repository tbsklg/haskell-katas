module Kyu5.GapInPrimes where

import Data.List (find)
import Data.Maybe (fromMaybe)

gap :: Integer -> Integer -> Integer -> Maybe (Integer, Integer)
gap g m n = find gap' $ zip primes' (fromMaybe [] $ tailMay primes')
  where
    gap' (x, y) = y - x == g
    primes' = primes m n

tailMay :: [a] -> Maybe [a]
tailMay [] = Nothing
tailMay (_:xs) = Just xs

primes :: Integer -> Integer -> [Integer]
primes m n = [x | x <- [m .. n], all (\y -> x `mod` y /= 0) [2 .. floor . sqrt . fromIntegral $ x]]

