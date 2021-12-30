module Kyu7.HammingDistance where

hammingDistance :: String -> String -> Int
hammingDistance xs = length . filter (uncurry (/=)) . zip xs