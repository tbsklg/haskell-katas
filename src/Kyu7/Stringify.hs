module Kyu7.Stringify where

stringify :: [Int] -> String
stringify [] = "null"
stringify (x : xs) = show x ++ " -> " ++ stringify xs
