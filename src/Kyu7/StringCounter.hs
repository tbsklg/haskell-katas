module Kyu7.StringCounter where

stringCounter :: String -> Char -> Int
stringCounter inputS charS = length . filter ((==) charS) $ inputS