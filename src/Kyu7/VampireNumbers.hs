module Kyu7.VampireNumbers where

import Data.List (sort)

isVampire :: Integer -> Integer -> Bool
isVampire a b = (a > 0 || b > 0) && sameDigits
  where
    sameDigits = sort (a' ++ b') == sort c'

    a' = digits a
    b' = digits b
    c' = digits (a * b)

digits :: Integral a => a -> [a]
digits 0 = []
digits i = digits (abs i `div` 10) ++ [abs i `mod` 10]
