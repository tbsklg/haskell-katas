module Kyu7.StringMaker where

makeString :: String -> String
makeString s = map head . words $ s
