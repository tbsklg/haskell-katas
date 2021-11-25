module Kyu7.Crap where

type Garden = [String]

crap :: Garden -> Int -> Int -> String
crap g b c = collect . concat $ g
    where
        collect l
            | (<=) 1 . length . filter (=='D') $ l = "Dog!!"
            | (>=) (b * c) . length . filter (=='@') $ l = "Clean"
            | otherwise = "Cr@p"
