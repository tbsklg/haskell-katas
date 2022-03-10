module Kyu7.Frequency where

import Data.List (maximumBy, group, sort)
import Data.Function (on)

mostFrequentItemCount :: [Int] -> Int
mostFrequentItemCount [] = 0
mostFrequentItemCount xs = length . maximumBy (compare `on` length) . group . sort $ xs
