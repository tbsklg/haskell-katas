module Kyu7.Isogram where

import Data.Char (toLower)
import Data.List (nub)

isIsogram :: String -> Bool
isIsogram s = (nub . map toLower $ s) == map toLower s
