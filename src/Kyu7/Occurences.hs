module Kyu7.Occurences where

import Data.List ( group, sort )

numberOfOccurrences :: (Eq a, Ord a) => a -> [a] -> Int
numberOfOccurrences x = length . filter (==x)