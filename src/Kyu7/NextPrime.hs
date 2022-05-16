module Kyu7.NextPrime where

nextPrime :: Integer -> Integer
nextPrime = until isPrime succ . succ
  where
    isPrime n = all (\x -> n `mod` x > 0) [2 .. bound n]
    bound = floor . sqrt . fromIntegral
