module Kyu7.XO where

import Data.Char (toLower)
import Data.List (partition)

-- | Returns true if the number of
-- Xs is equal to the number of Os
-- (case-insensitive)
xo :: String -> Bool
xo str = xLength == oLength
  where
    xLength = length . filter (== 'x') $ asLowerCase
    oLength = length . filter (== 'o') $ asLowerCase
    asLowerCase = map toLower str
