module Kyu7.SF179 where

fraction :: (Int, Int) -> Int
fraction (x, y) = numerator + denominator
  where
    numerator = x `div` gcd x y
    denominator = y `div` gcd x y
