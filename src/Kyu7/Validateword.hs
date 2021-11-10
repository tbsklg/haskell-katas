module Kyu7.Validateword where

import Data.List (group, nub, sort)
import Data.Char (toLower)

validateWord :: String -> Bool
validateWord = (==) 1 . length . nub . map length . group . sort . map toLower
