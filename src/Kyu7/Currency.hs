module Kyu7.Currency where

import Data.List (intercalate)

-- | Returns a string with comma as thousands seperator
toCurrency :: Integer -> String
toCurrency = intercalate "," . map reverse . split3 . reverse . show
  where
    split3 [] = []
    split3 xs = split3 (drop 3 xs) ++ [take 3 xs]
