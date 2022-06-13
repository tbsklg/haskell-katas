module Kyu7.Remove5 (remove) where

remove :: String -> String
remove = unwords . filter ((/=) 1 . length . filter (== '!')) . words
