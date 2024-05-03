module Kyu7.OddBit (anyOdd) where

import Data.Word (Word32)

anyOdd :: Word32 -> Int
anyOdd =
  fromEnum
    . any ((== 1) . snd)
    . filter (\(i, _) -> odd i)
    . zip [0 ..]
    . reverse
    . bin

bin :: (Integral a) => a -> [a]
bin 0 = []
bin x = bin (x `div` 2) ++ [x `mod` 2]

-- anyOdd :: Word32 -> Int
-- anyOdd n = case somethingIsOddHere of
--   True -> 1
--   False -> 0
--   where somethingIsOddHere = any (testBit n) [1, 3 .. 31]
