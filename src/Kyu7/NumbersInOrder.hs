module Kyu7.NumbersInOrder (isAscOrder) where

import Data.List (sort)

isAscOrder :: [Int] -> Bool
isAscOrder i = (==) i . sort $ i
