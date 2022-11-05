module Kyu7.Dropcaps where

import Data.Char (toLower, toUpper)
import Data.List.Split (splitOn)
import Kyu7.Capitalize (capitalize)

dropCap :: String -> String
dropCap = unwords . map capitalizeL2 . splitOn " "

capitalizeL2 :: [Char] -> [Char]
capitalizeL2 x
  | length x > 2 = (toUpper . head $ x) : (map toLower . tail $ x)
  | otherwise = x
