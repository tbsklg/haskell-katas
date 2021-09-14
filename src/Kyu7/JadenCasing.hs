module Kyu7.JadenCasing where

import Data.Char (toUpper)

toJadenCase :: String -> String
toJadenCase = unwords . map (\x -> toUpper (head x) : tail x) . words
