module Kyu6.A96 where

import Data.Char (isAlpha)
import Data.List (groupBy)

abbreviate :: [Char] -> [Char]
abbreviate = concatMap abbreviate' . groupBy (\a b -> isAlpha a && isAlpha b)
  where
    abbreviate' str
      | length str < 4 = str
      | otherwise = [head str] ++ show (length str - 2) ++ [last str]
