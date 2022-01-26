module Kyu7.RemoveConsecutiveDuplicateWords (remove) where

import Data.List (nub)

remove :: String -> String
remove = unwords . remove' . words
  where
    remove' [] = []
    remove' [x] = [x]
    remove' (x : y : xs)
      | x == y = x : remove' (dropWhile (== y) xs)
      | otherwise = x : remove' (y : xs)

-- remove = unwords . map head . group . words
