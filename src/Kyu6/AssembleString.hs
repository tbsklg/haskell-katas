module Kyu6.AssembleString (assembleString) where

import Data.Char (isSpace)
import Data.List (transpose)

assembleString :: [[Char]] -> [Char]
assembleString xs = assemble . transpose $ xs
  where
    assemble [] = []
    assemble (x : xs) = restore x : assemble xs

    restore matches
      | all isSpace matches = head matches
      | all (== '*') matches = '#'
      | otherwise = head . filter (/= '*') $ matches

-- assembleString = map (fromMaybe '#' . find (/= '*')) . transpose
