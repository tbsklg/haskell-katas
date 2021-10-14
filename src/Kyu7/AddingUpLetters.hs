module Kyu7.AddingUpLetters (addLetters) where

import Data.Char (chr, ord)

addLetters :: [Char] -> Char
addLetters [] = 'z'
addLetters l
  | sumOfChars == 0 = chr (26 + 96)
  | otherwise = chr (sumOfChars + 96)
  where
    sumOfChars = sum (map (\x -> ord x - 96) l) `mod` 26
