module Kyu6.Sumdigpow where

import Data.Char (digitToInt)

sumDigPow :: Int -> Int -> [Int]
sumDigPow a b = [x | x <- [a .. b], isDigPow x]
  where
    isDigPow x = (==) x . sum . zipWith (^) (map digitToInt . show $ x) $ [1 ..]
