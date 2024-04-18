module Kyu6.Hamming where

hamming :: String -> String -> Int
hamming a = length . filter(uncurry(/=)) . zip a

