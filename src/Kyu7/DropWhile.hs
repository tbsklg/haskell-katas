module Kyu7.DropWhile where

import Prelude hiding (break, dropWhile, span)

dropWhile :: [a] -> (a -> Bool) -> [a]
dropWhile [] _ = []
dropWhile (x : xs) p
  | p x = dropWhile xs p
  | otherwise = x : xs
