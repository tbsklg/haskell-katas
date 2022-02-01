module Kyu7.Product2 (product') where

product' :: String -> Int
product' s = e * q
    where
        q = length . filter (== '?') $ s
        e = length . filter (== '!') $ s
