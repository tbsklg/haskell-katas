module Kyu7.Balanced where

import Data.Char (digitToInt)

balancedNum :: Int -> String
balancedNum i
  | first == second = "Balanced"
  | otherwise = "Not Balanced"
  where
    first = sum . take elems $ digits
    second = sum . take elems . reverse $ digits

    elems
      | even . length $ digits = middle' - 1
      | otherwise = middle'

    middle' = div (length digits) 2
    digits = map digitToInt . show $ i
