module Kyu7.UniqueStrChar where

solve :: String -> String -> String 
solve xs ys = left ++ right
    where
        left = filter (`notElem` ys) xs
        right = filter (`notElem` xs) ys
