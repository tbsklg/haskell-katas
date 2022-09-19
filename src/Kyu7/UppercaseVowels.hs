module Kyu7.UppercaseVowels where

uppercaseVowels :: String -> String
uppercaseVowels [] = []
uppercaseVowels ('a':xs) = 'A' : uppercaseVowels xs
uppercaseVowels ('e':xs) = 'E' : uppercaseVowels xs
uppercaseVowels ('i':xs) = 'I' : uppercaseVowels xs
uppercaseVowels ('o':xs) = 'O' : uppercaseVowels xs
uppercaseVowels ('u':xs) = 'U' : uppercaseVowels xs
uppercaseVowels (x:xs) = x : uppercaseVowels xs
