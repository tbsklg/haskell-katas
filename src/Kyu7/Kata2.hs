module Kyu7.Kata2 (numbersWithDigitInside) where

import Data.List (isInfixOf)

numbersWithDigitInside :: Int -> Int -> [Int]
numbersWithDigitInside x d = [c, s, p]
  where
    c = length n
    s = sum n
    p = if null n then 0 else product n

    n = filter (has d) [1 .. x]

has :: Int -> Int -> Bool
has d x = show d `isInfixOf` show x
