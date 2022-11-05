module Kyu7.Kata4 (mean) where

import Data.Char (digitToInt, isAlpha, isNumber)

mean :: [Char] -> (Double, String)
mean lst = (m, s)
  where
    m = (fromIntegral . sum $ n) / (fromIntegral . length $ n)
    n = map digitToInt . filter isNumber $ lst
    s = filter isAlpha lst
