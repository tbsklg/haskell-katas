module Kyu7.Catenation where

charConcat :: String -> String
charConcat = go 1
    where
        go _ [] = []
        go _ [_] = []
        go i (x:xs) = [x] ++ [last xs] ++ show i ++ go (i + 1) (init xs)
