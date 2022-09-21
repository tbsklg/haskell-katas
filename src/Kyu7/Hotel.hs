module Kyu7.Hotel where

groupSize :: Integer -> Integer -> Integer
groupSize size day = ceiling $ (-1 + sqrt (1 + 8 * (fromIntegral day + fromIntegral offset))) / 2
  where
    offset = gauss (size - 1)
    gauss x = x * (x + 1) `div` 2
