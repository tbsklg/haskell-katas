module Kyu7.Validateword where

import Data.Char (toLower)
import Data.List (group, nub, sort)

validateWord :: String -> Bool
validateWord = (==) 1 . length . nub . map length . group . sort . map toLower
