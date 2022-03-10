module Kyu7.Arrays where

import Data.List (nub)

uniqueSum :: [Int] -> Int
uniqueSum = sum . nub
