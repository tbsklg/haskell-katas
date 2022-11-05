module Kyu7.Monotone where

-- | Return true if the elements of the list are non-decreasing.
--   If the list is empty, return True.
isMonotone :: Ord a => [a] -> Bool
isMonotone [] = True
isMonotone [x] = True
isMonotone (x : y : ys) = x <= y && isMonotone (y : ys)
