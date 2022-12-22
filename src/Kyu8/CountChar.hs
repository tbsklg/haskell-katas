module Kyu8.CountChar (countChar) where

countChar :: String -> Char -> Int
countChar xs x = length . filter (==x) $ xs
