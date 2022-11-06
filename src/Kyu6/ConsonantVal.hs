module Kyu6.ConsonantVal where

import Data.Char (ord)
import Data.List.Split (splitOneOf)

solve :: String -> Int
solve = maximum . map sumValues . splitOneOf vowels
  where
    sumValues = sum . map (\x -> ord x - 96)
    vowels = "aeiou"
