module Kyu6.BreakCamelCase where

import Data.Char (isLower, isUpper)

solution :: String -> String
solution [] = []
solution [x] = [x]
solution (x : xs) = go [] (x : xs)
  where
    go xs [] = xs
    go [] (x : xs) = go [x] xs
    go splitted (x : xs)
      | isUpper x = go (splitted ++ " " ++ [x]) xs
      | otherwise = go (splitted ++ [x]) xs

-- solution = unwords . split (startsWithOneOf ['A'..'Z'])
-- solution = unwords . groupBy (\x y -> isLower y)
