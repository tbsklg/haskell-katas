module Kyu7.StringTrimmer where

trim :: String -> Int -> String
trim str n
    | n >= length str = take n str
    | length str <= 3 = take n str ++ "..."
    | otherwise = take (n - 3) str ++ "..."
