module Kyu7.ReverseWords where

import Data.List.Split

reverseWords :: String -> String
reverseWords = unwords . map reverse . splitOn " "
