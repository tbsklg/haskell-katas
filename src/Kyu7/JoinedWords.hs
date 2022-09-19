module Kyu7.JoinedWords where

joinS :: [[Char]] -> [Char] -> [Char]
joinS [] _ = []
joinS [x] _ = x
joinS (x:xs) y = x ++ y ++ joinS xs y
