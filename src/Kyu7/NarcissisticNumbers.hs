module Kyu7.NarcissisticNumbers where

import Data.Char (digitToInt)

isNarcissistic :: Integer -> Bool
isNarcissistic num = sum (map (^ 3) (digits num)) == fromIntegral num
  where
    power = length . show $ num
    digits = map digitToInt . show
