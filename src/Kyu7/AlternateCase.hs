module Kyu7.AlternateCase where

import Data.Char (isLower, toLower, toUpper)

alternateCase :: String -> String
alternateCase = map toggleCase
  where
    toggleCase c
      | isLower c = toUpper c
      | otherwise = toLower c
