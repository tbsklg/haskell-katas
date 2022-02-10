module Kyu7.Anagram where

import Data.Char (toLower)
import Data.List (sort)

isAnagramOf :: String -> String -> Bool
isAnagramOf test original = (sort . map toLower $ test) == (sort . map toLower $ original)
