module Kyu7.Min where

import Data.List (nub, sort)

minValue :: [Int] -> Int
minValue s = read (concatMap show . sort . nub $ s) :: Int
