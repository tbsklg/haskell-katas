module Kyu7.Divisors where

divisors :: Integral a => a -> Int
divisors n = length $ filter (\x -> fromIntegral n `mod` x == 0) [1 .. fromIntegral n]

-- divisors x = length [k | k <- [1..x], x `mod` k == 0]
