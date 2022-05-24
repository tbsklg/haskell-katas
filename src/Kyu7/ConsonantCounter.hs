module Kyu7.ConsonantCounter where

import Data.Char (isAlpha)

consonantCount :: String -> Int
consonantCount = length . filter (`notElem` "aeiouAEIOU") . filter isAlpha
