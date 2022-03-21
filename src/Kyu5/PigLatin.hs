module Kyu5.PigLatin where

pigIt :: String -> String
pigIt = unwords . map toPigLatin . words

toPigLatin :: String -> String
toPigLatin "!" = "!"
toPigLatin "?" = "?"
toPigLatin s = tail s ++ [head s] ++ "ay"
