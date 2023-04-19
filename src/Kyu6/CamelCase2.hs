module Kyu6.CamelCase2 where

import Data.Char (toUpper)

camelCase :: String -> String
camelCase = concatMap (\(x : xs) -> toUpper x : xs) . words
