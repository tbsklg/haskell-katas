module Kyu7.Dropcaps where

import Kyu7.Capitalize (capitalize)
import Data.Char (toUpper, toLower)
import Data.List.Split (splitOn)

dropCap :: String -> String
dropCap = unwords . map capitalizeL2 . splitOn " "

capitalizeL2 :: [Char] -> [Char]
capitalizeL2 x
    | length x > 2 = (toUpper . head $ x) : (map toLower . tail $ x)
    | otherwise = x
