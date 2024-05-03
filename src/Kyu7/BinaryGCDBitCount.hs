module Kyu7.BinaryGCDBitCount where

binaryGCD :: Int -> Int -> Int
binaryGCD x = sum . bin . gcd x

bin :: (Integral a) => a -> [a]
bin 0 = []
bin x = bin (x `div` 2) ++ [x `rem` 2]

-- binaryGCD n = popCount . gcd n
