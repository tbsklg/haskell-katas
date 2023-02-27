module Kyu6.StringTransformer where

import Data.Char (isUpper, toLower, toUpper)
import Data.List.Split (splitOn)

stringTransformer :: String -> String
stringTransformer = unwords . map (map transform) . reverse . words'
  where
    words' xs = splitOn " " xs

    transform c
      | isUpper c = toLower c
      | otherwise = toUpper c
