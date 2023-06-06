module Kyu6.Alphabetized (alphabetized) where

import Data.Char (isAlpha, toLower)
import Data.List (sortBy)

alphabetized :: String -> String
alphabetized = map snd . sortBy alphaAndPos . zip [0 ..] . filter isAlpha
  where
    alphaAndPos :: (Int, Char) -> (Int, Char) -> Ordering
    alphaAndPos (a, b) (c, d)
      | toLower b == toLower d = compare a c
      | otherwise = compare (toLower b) (toLower d)
