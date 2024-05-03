module Kyu6.WeIrDStRiNgCaSe where

import Data.Char (toLower, toUpper)

toWeirdCase :: String -> String
toWeirdCase = unwords . map (toWeird . (zip [0 ..] . map toLower)) . words
  where
    toWeird [] = []
    toWeird ((index, x) : xs)
      | even index = toUpper x : toWeird xs
      | otherwise = x : toWeird xs

-- toWeirdCase = unwords . map (zipWith ($) weird) . words
--  where weird = cycle [toUpper, toLower]
