module Kyu7.SimpleMatches where

import Data.List (find, intercalate)
import Data.List.Split (splitOn)

solve :: String -> String -> Bool
solve a b = case find (== '*') a of
  Just _ -> length b >= length a - 1 && (foldl (\y x -> y && (uncurry (==) x || fst x == '*')) True . zip c $ b)
  _ -> a == b
  where
    c = intercalate (replicate diff '*') . splitOn "*" $ a
    diff = length b - length a + 1
