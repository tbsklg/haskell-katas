module Kyu6.ExpandedNumber where

import Data.Char (digitToInt)
import Data.List (intercalate)

expandedForm :: Int -> String
expandedForm n =
  intercalate " + "
    . reverse
    . map show
    . filter (/= 0)
    . zipWith (\d i -> 10 ^ i * d) (reverse digits)
    $ [0 ..]
  where
    digits = map digitToInt . show $ n
