module Kyu7.OddNotPrime where

oddNotPrime :: Int -> Int
oddNotPrime n = length [x | x <- [1 .. n], odd x, not . prime $ x]

prime :: Integral a => a -> Bool
prime 0 = False
prime 1 = False
prime n = all (\x -> n `mod` x > 0) [2 .. floor . sqrt . fromIntegral $ n]
