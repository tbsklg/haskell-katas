module Kyu7.Backronym where

import Data.Char (toUpper)
import Data.Maybe (fromJust)

dict :: Char -> String
dict 'A' = "awesome"
dict 'B' = "beautiful"
dict 'C' = "confident"
dict 'D' = "disturbing"
dict 'E' = "eager"
dict 'F' = "fantastic"
dict 'G' = "gregarious"
dict 'H' = "hippy"
dict 'I' = "ingestable"
dict 'J' = "joke"
dict 'K' = "klingon"
dict 'L' = "literal"
dict 'M' = "mustache"
dict 'N' = "newtonian"
dict 'O' = "oscillating"
dict 'P' = "perfect"
dict 'Q' = "queen"
dict 'R' = "rant"
dict 'S' = "stylish"
dict 'T' = "turn"
dict 'U' = "underlying"
dict 'V' = "volcano"
dict 'W' = "weird"
dict 'X' = "xylophone"
dict 'Y' = "yogic"
dict 'Z' = "zero"
dict _ = ""

-- dict :: Char -> String
-- Can only map uppercase letters.

makeBackronym :: String -> String
makeBackronym = unwords . map (dict . toUpper)
