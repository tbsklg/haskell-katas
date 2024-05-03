module Kyu7.BitsBattle (bitsBattle) where

bitsBattle :: [Word] -> String
bitsBattle w
  | ones > zeros = "odds win"
  | zeros > ones = "evens win"
  | otherwise = "tie"
  where
    ones = length . filter (== 1) . concatMap decToBin . filter odd $ w
    zeros = length . filter (== 0) . concatMap decToBin . filter even $ w

decToBin :: (Integral a) => a -> [a]
decToBin 0 = []
decToBin n = (n `mod` 2) : decToBin (n `div` 2)
