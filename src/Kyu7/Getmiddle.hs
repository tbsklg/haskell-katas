module Kyu7.Getmiddle where

getMiddle :: String -> String
getMiddle s
    | odd . length $ s = [s !! middle]
    | otherwise = (s !! (middle - 1)) : [s !! middle]
    where
        middle = length s `div` 2
