module Kyu7.FruitNinjaI where

-- import Fruits
-- defines fruits :: [String]

cutFruits :: [String] -> [String]
cutFruits [] = []
cutFruits xs = concatMap (\x -> if isFruit x then cut x else [x]) xs

isFruit :: [Char] -> Bool
isFruit x = x `elem` fruits

cut :: [a] -> [[a]]
cut x
  | odd . length $ x = [take (m + 1) x, drop (m + 1) x]
  | otherwise = [take m x, drop m x]
  where
    m = length x `div` 2

fruits :: [[Char]]
fruits = ["apple", "pear", "banana"]
