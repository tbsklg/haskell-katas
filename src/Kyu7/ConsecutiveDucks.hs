module Kyu7.ConsecutiveDucks (consecutiveDucks) where

import Data.Bits ((.&.))

consecutiveDucks :: Int -> Bool
consecutiveDucks n = not (powerOfTwo n)

powerOfTwo :: Int -> Bool
powerOfTwo n = n /= 0 && n .&. (n -1) == 0
