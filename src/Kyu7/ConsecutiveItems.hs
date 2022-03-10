module Kyu7.ConsecutiveItems (consecutive) where

import Data.List (elemIndex)
import Data.Maybe (fromJust)

consecutive :: [Int] -> Int -> Int -> Bool
consecutive xs a b = abs (a' - b') == 1
    where
        a' = fromJust . elemIndex a $ xs
        b' = fromJust . elemIndex b $ xs
