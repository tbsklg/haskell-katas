module Kyu7.Packing where

arrayPacking :: [Integer] -> Integer
arrayPacking = bintodec . concatMap (eightBit . binary) . reverse

bintodec :: [Integer] -> Integer
bintodec = foldr (\(i, x) y -> y + x * 2 ^ i) 0 . zip [0, 1 ..] . reverse

eightBit :: Num a => [a] -> [a]
eightBit xs = replicate (8 - length xs) 0 ++ xs

binary :: Integral a => a -> [a]
binary 0 = []
binary x = binary (x `div` 2) ++ [x `mod` 2]
