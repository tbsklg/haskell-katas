module Kyu6.BitCounting (countBits) where

countBits :: Int -> Int
countBits = length . filter (==1) . toBinary 
  where
    toBinary 0 = []
    toBinary x = toBinary (x `div` 2) ++ [x `mod` 2]

