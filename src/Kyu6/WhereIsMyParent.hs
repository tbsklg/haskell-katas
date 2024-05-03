module Kyu6.WhereIsMyParent (findChildren) where

import Data.Char (toLower, toUpper)
import Data.List (group, sort)

findChildren :: String -> String
findChildren = concatMap (\x -> (toUpper . head $ x) : tail x) . group . sort . map toLower
