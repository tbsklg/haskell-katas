module Kyu7.SortTransform where

import Data.Char (chr)
import Data.List (sort, intercalate)

sortTransform :: [Int] -> String
sortTransform a = intercalate "-" [first a, second a, third a, fourth  a]

first :: [Int] -> [Char]
first a = map chr $ numbers a

second :: [Int] -> [Char]
second a = map chr $ numbers . sort $ a

third :: [Int] -> [Char]
third a = map chr $ numbers . reverse. sort $ a

fourth :: [Int] -> [Char]
fourth = numbers . sort . map chr

numbers :: [a] -> [a]
numbers a = take 2 a ++ (reverse . take 2 . reverse $ a)
