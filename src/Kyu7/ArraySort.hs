module Kyu7.ArraySort where

import Data.List (sortOn)

sortArray :: [a] -> [Int] -> [a]
sortArray xs = map fst . sortOn snd . zip xs
