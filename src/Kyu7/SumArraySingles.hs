module Kyu7.SumArraySingles where

import Data.List (group, sort)

repeats :: [Int] -> Int
repeats =
  sum
    . map fst
    . filter (\(_, length) -> length == 1)
    . map (\x -> (head x, length x))
    . group
    . sort
