module Kyu7.SF154 (zeroAndOne) where

zeroAndOne :: String -> Int
zeroAndOne [] = 0
zeroAndOne [_] = 1
zeroAndOne ('1' : '0' : xs) = zeroAndOne xs
zeroAndOne ('0' : '1' : xs) = zeroAndOne xs
zeroAndOne (x : xs) = 1 + zeroAndOne xs
