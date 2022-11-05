module Kyu7.Frequency where

import Data.Function (on)
import Data.List (group, maximumBy, sort)

mostFrequentItemCount :: [Int] -> Int
mostFrequentItemCount [] = 0
mostFrequentItemCount xs = length . maximumBy (compare `on` length) . group . sort $ xs
