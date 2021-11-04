module Kyu7.Countdig where

import Text.ParserCombinators.ReadP (count)

nbDig :: Int -> Int -> Int
nbDig n d = length . filter (\x -> [x] == show d) . concatMap show $ [x ^ 2 | x <- [0 .. n]]
