module Kyu7.TrueForExactlyOne (one) where

one :: [a] -> (a -> Bool) -> Bool
one x f = (==) 1 . length . filter f $ x
