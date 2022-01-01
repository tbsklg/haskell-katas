module Kyu7.PigLatin where

pigLatin :: String -> String
pigLatin word
  | length word > 3 = tail word ++ [head word] ++ "ay"
  | otherwise = word
