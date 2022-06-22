module Kyu7.Scratch where

import Data.List (group)

scratch :: [String] -> Int
scratch [] = 0
scratch (x:xs)
    | hasWon = win + scratch xs
    | otherwise = scratch xs
    where
        hasWon = any (\x -> length x > 2) . group . init . words $ x
        win = read . last . words $ x
