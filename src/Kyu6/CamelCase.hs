module Kyu6.CamelCase where

import Data.Char (toUpper)
import Data.List.Split (splitOneOf)

toCamelCase :: String -> String
toCamelCase [] = []
toCamelCase str = (++) x . concatMap (\(y : ys) -> toUpper y : ys) . filter (/= "") $ xs
  where
    (x : xs) = splitOneOf "-_" str
