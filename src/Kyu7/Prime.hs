module Kyu7.Prime where

isPrime :: Int -> Bool
isPrime 0 = False
isPrime 1 = False
isPrime i = all (\x -> i `mod` x > 0) [2 .. (i - 1)]
