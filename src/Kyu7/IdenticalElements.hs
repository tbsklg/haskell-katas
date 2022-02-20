module Kyu7.IdenticalElements (duplicateElements) where

import Data.List (intersect)

duplicateElements :: [Int] -> [Int] -> Bool
duplicateElements xs = (<) 0 . length . intersect xs
