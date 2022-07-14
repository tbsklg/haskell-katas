module Kyu7.Numbers4 where

twoCount :: Int -> Int
twoCount = length . takeWhile (==0) . reverse . binary

binary :: Integral a => a -> [a]
binary 0 = []
binary n = binary (n `div` 2) ++ [n `mod` 2]
