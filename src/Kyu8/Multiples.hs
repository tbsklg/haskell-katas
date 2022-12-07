module Kyu8.Multiples (multiples) where

multiples :: Int -> Int -> [Int]
multiples f t = [x | x <- map (f *) [1 .. t], x >= f, x <= t]
