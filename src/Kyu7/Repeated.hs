module Kyu7.Repeated (isConsecutive) where

import Data.List (group, nub)

isConsecutive :: String -> Bool
isConsecutive xs = nub xs == map head (group xs)
