module Kyu6.FreqSort where

import Data.List (group, sort, sortBy)

solve :: [Int] -> [Int]
solve = reverse . concat . sortBy frequency . group . sort
 where
  frequency a@(x : xs) b@(y : ys)
    | length a == length b = ascending x y
    | otherwise = compare (length a) (length b)

  ascending a b = case compare a b of
    EQ -> EQ
    LT -> GT
    GT -> LT

-- solve = concat . sortOn (negate . length) . group . sort
