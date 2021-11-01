module Kyu7.Opstrings1 where

import Data.List (intercalate)
import Data.List.Split (splitOn)

vertMirror :: [Char] -> [Char]
vertMirror strng = intercalate newLine $ map reverse (splitOn newLine strng)

horMirror :: [Char] -> [Char]
horMirror strng = intercalate newLine $ reverse (splitOn newLine strng)

newLine :: [Char]
newLine = "\n"

oper :: (String -> String) -> String -> String
oper fct = fct
