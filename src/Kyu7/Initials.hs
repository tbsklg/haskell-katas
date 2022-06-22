module Kyu7.Initials where

toInitials :: String -> String
toInitials = unwords . map (\x -> head x : ".") . words
