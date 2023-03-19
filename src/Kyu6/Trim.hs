module Kyu6.Trim where

import Data.Char (isSpace)

trim :: String -> String
trim = dropWhile isSpace . reverse . dropWhile isSpace . reverse

-- import Data.List (dropWhile, dropWhileEnd)
-- import Data.Char (isSpace)

-- trim :: String -> String
-- trim = dropWhile isSpace . dropWhileEnd isSpace
