module Kyu7.SharedBitCounter (sharedBits) where

import Data.Bits ((.&.))

sharedBits :: Int -> Int -> Bool
sharedBits a b = (<) 1 . length . filter (== 1) . decToBin $ (a .&. b)

decToBin :: Integral a => a -> [a]
decToBin 0 = []
decToBin n = (n `mod` 2) : decToBin (n `div` 2)

-- sharedBits a b = popCount (a .&. b) > 1
