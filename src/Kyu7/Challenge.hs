module Kyu7.Challenge where

noRepeat :: String -> Char
noRepeat [] = ' '
noRepeat [x] = x
noRepeat (x:xs)
    | x `elem` xs = noRepeat . filter (/=x) $ xs
    | otherwise = x
