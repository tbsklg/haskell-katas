module Kyu7.Pattern3 where

import Data.List (inits, intercalate)

pattern :: Int -> String
pattern n
  | n <= 0 = ""
  | otherwise =
      intercalate "\n"
        . map (concatMap show)
        . tail
        . inits
        $ [n, n - 1 .. 1]
