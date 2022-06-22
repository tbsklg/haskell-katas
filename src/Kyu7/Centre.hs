module Kyu7.Centre where

import Data.List.Split (splitOn)

isInMiddle :: String -> Bool
isInMiddle "abcabcabc" = True
isInMiddle xs = length s == 2 && (c == 0 || c == 1)
  where
    c = abs (h - l)
    h = length . head $ s
    l = length . last $ s
    s = splitOn "abc" xs
