module Kyu7.NthSmallest where

import Data.List (nub, sort)

nthSmallest :: [Int] -> Int -> Int
nthSmallest l i = sort l !! (i - 1)
