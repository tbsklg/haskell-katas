module Kyu7.SimpleReversal where

solve :: String -> String
solve [] = []
solve l = reverseWithWhitespaces l (filter (/= ' ') l)
  where
    reverseWithWhitespaces [] _ = []
    reverseWithWhitespaces _ [] = []
    reverseWithWhitespaces (x : xs) l
      | x == ' ' = " " ++ reverseWithWhitespaces xs l
      | otherwise = last l : reverseWithWhitespaces xs (init l)
    