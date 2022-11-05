module Kyu7.GCD where

import Prelude hiding (gcd, lcm)

gcd :: Integral n => n -> n -> n
gcd x y
  | y == 0 = x
  | otherwise = gcd y (x `rem` y)
