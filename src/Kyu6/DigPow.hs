module Kyu6.DigPow where

import Data.Char (digitToInt)

digpow :: Integer -> Integer -> Integer
digpow n p
  | z `mod` n == 0 = z `div` n
  | otherwise = -1
  where
    z = toInteger . sum $ zipWith (^) (digits n) [p ..]

digits :: Integer -> [Int]
digits = map digitToInt . show
