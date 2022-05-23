module Kyu7.Puzzles (testit) where

import Data.Char (toUpper)

testit :: String -> String
testit = unwords . map (\(x : xs) -> toUpper x : xs) . words
