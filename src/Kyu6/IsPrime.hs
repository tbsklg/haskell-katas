module Kyu6.IsPrime where

isPrime :: Integer -> Bool
isPrime x = x > 1 && all (\y -> x `mod` y /= 0) [2 .. floor . sqrt . fromIntegral $ x]

