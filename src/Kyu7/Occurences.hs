module Kyu7.Occurences where

import Data.List ( group, sort )

numberOfOccurrences :: (Eq a, Ord a) => a -> [a] -> Int
numberOfOccurrences x xs
    | not (null occurences) = length . head $ occurences
    | otherwise = 0
    where
        occurences = filter((==) x . head) . group . sort $ xs
