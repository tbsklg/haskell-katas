module Kyu7.FromAtoZ (gimmeTheLetters) where

gimmeTheLetters :: String -> String
gimmeTheLetters [a, '-', b] = [a..b]
gimmeTheLetters _ = ""
