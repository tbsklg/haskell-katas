module Kyu7.ConstructABitVectorSet (sortByBit, bintoDec) where

sortByBit :: [Int] -> Int
sortByBit [] = 0
sortByBit i = bintoDec . reverse .  map (\x -> if x `elem` i then 1 else 0) $ [0 .. (maximum i)]

bintoDec :: [Int] -> Int
bintoDec i = foldl (\y x -> y + snd x * 2 ^ fst x) 0 . zip [0 ..] $ reverse i
