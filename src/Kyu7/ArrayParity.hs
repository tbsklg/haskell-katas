module Kyu7.ArrayParity where 

import Data.List (nub)

solve :: [Int] -> Int
solve = sum . nub
