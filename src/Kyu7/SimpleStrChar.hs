module Kyu7.SimpleStrChar where

import Data.Char (isDigit, isLower, isUpper)

solve :: [Char] -> [Int]
solve xs = [uppercase', lowercase', numbers, specials']
  where
    uppercase' = length . filter isUpper $ xs
    lowercase' = length . filter isLower $ xs
    numbers = length . filter isDigit $ xs
    specials' = length . filter (\x -> not (isUpper x) && not (isLower x) && not (isDigit x)) $ xs
