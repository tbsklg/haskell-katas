module Kyu6.Persistence where

import Data.Char (digitToInt)

persistence :: Int -> Int
persistence n
    | length digits < 2 = 0
    | otherwise = (+) 1 . persistence . product $ digits
    where
        digits = digitsOf n

digitsOf :: Int -> [Int]
digitsOf = map digitToInt . show
