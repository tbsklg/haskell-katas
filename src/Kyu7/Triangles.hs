module Kyu7.Triangles where

import Data.List (sort)

isTriangle :: Int -> Int -> Int -> Bool
isTriangle a b c = sum [a, b, c] - maximum [a, b, c] > maximum [a, b, c]

-- isTriangle a b c =
--   case sort [a,b,c] of
--      [min, middle, max] -> (min + middle) > max
