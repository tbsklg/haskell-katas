module Kyu7.AlphabetSym where

import Data.Char (toLower)

solve :: [String] -> [Int]
solve = map (\x -> length $ filter (\w -> toLower (fst w) == snd w) (zip x ['a' .. 'z']))
