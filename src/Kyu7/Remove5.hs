module Kyu7.Remove5 (remove) where

import Data.List (elemIndices)

remove :: String -> String
remove = unwords . filter ((/=) 1 . length . filter (== '!')) . words
