module Kyu7.Scalesqstrings where

import Data.List.Split
import Data.List (intercalate)

scale :: [Char] -> Int -> Int -> [Char]
scale strng k n = transform $ splitOn "\n" strng 
    where
        transform [] = []
        transform [x] = vScale (hScale x k) n
        transform (x:xs) = vScale (hScale x k) n ++ newLine ++ transform xs

hScale :: [Char] -> Int -> [Char]
hScale [] _ = []
hScale (x : xs) times = replicate times x ++ hScale xs times

vScale :: [Char] -> Int -> [Char]
vScale [] _ = []
vScale word times = intercalate newLine (replicate times word)

newLine :: String
newLine = "\n"

-- scale :: String -> Int -> Int -> String
-- scale [] _ _ = ""
-- scale s k n = init . unlines . concatMap (replicate n . concatMap (replicate k)) . lines $ s
