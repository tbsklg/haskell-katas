module Kyu7.IsSortedAndHow where

import Data.List (sort)

isSortedAndHow :: [Integer] -> String
isSortedAndHow lst
    | (==) lst . sort $ lst = "yes, ascending"
    | (==) lst . reverse . sort $ lst = "yes, descending"
    | otherwise = "no"
