module Kyu7.PowerOfTwo where
 
import Data.Bits ((.&.))

isPowerOfTwo :: Int -> Bool
isPowerOfTwo n = n .&. (n - 1) == 0
