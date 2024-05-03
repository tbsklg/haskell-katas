module Kyu6.SortingByBits (sortByBit) where

import Data.Function ()
import Data.List (sortBy)
import Data.Ord ()
import Data.Word (Word32)

sortByBit :: [Word32] -> [Word32]
sortByBit = sortBy bits

bits :: Word32 -> Word32 -> Ordering
bits a b
  | countBits a == countBits b = compare a b
  | otherwise = compare (countBits a) (countBits b)

countBits :: Word32 -> Int
countBits = length . filter (== 1) . toBits

toBits :: Word32 -> [Word32]
toBits n
  | n == 0 = [0]
  | otherwise = (n `mod` 2) : toBits (n `div` 2)

-- sortByBit = sortOn popCount . sort
