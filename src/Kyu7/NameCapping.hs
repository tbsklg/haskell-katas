module Kyu7.NameCapping where

import Data.Char (toLower, toUpper)

capMe :: [String] -> [String]
capMe [] = []
capMe [""] = [""]
capMe xs = map (\x -> (toUpper . head $ x) : (map toLower . tail $ x)) xs
