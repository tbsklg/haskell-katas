module Kyu7.Pattern2 where

import Data.List (intercalate, tails)

pattern :: Int -> String
pattern n =
  intercalate "\n"
    . map (concatMap show)
    . filter (not . null)
    . tails
    $ [1 .. n]
