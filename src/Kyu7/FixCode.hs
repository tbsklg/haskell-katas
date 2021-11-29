module Kyu7.FixCode where

import Data.Char (ord)

solve :: [Char] -> Bool
solve [] = True
solve [_] = True
solve xs
  | difference == 0 || difference == 2 = solve . init . tail $ xs
  | otherwise = False
  where
    difference = abs ((ord . last $ xs) - (ord . head $ xs))
