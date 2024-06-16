module Kyu7.Repeated (isConsecutive) where

import Data.List (group, nub)

isConsecutive :: String -> Bool
isConsecutive xs = map head (group xs) == nub xs
