module Kyu7.NextPrime where

nextPrime :: Integer -> Integer
nextPrime n = head . dropWhile (not . isPrime) $ [n ..]

isPrime :: Integral a => a -> Bool
isPrime k = null [ x | x <- [2..k - 1], k `mod` x == 0]
