module Kyu7.Coprime (coprime) where

coprime :: Word -> Word -> Bool
coprime x y = gcd x y == 1
