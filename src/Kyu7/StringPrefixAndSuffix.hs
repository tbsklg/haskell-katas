module Kyu7.StringPrefixAndSuffix (solve) where

import Data.List (inits, intersect, tails)

solve :: String -> Int
solve s =
  maximum'
    . map length
    . filter (/= "")
    . filter (\x -> length x <= (length s `div` 2))
    . intersect (init . inits $ s)
    $ (tail . tails $ s)

maximum' :: (Num p, Ord p) => [p] -> p
maximum' [] = 0
maximum' xs = maximum xs
