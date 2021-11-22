module Kyu7.DoubletonNumber (doubleton) where

import Data.List (nub)

doubleton :: Int -> Int
doubleton n = head . filter isDoubleton $ [n + 1 ..]

isDoubleton :: Int -> Bool
isDoubleton = (==) 2 . length . nub . show
