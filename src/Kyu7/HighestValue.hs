module Kyu7.HighestValue where

import Data.Char (ord)

highestValue :: String -> String -> String
highestValue a b
    | sum (map ord a) >= sum (map ord b) = a
    | otherwise = b
