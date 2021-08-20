module Kyu7.KillBit where

import Data.Bits ( Bits(clearBit) )

killKthBit :: Int -> Int -> Int
killKthBit n k = clearBit n (k - 1)
