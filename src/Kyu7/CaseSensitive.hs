module Kyu7.CaseSensitive where

import Data.Char (isLower, isUpper)

caseSensitive :: String -> (Bool, String)
caseSensitive xs = (l, r)
  where
    l = all isLower xs
    r = filter isUpper xs
