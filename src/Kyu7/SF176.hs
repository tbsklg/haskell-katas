module Kyu7.SF176 where

reverseLetter :: String -> String
reverseLetter s = reverse $ filter (`elem` alphabet) s

alphabet :: [Char]
alphabet = "abcdefghijklmnopqrstuvwxyz"
