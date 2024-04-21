module Kyu6.HammingCode (decode, encode) where

import Data.Char (digitToInt, ord, chr)
import Data.List.Split (chunksOf)

decode, encode :: [Char] -> [Char]
encode = concatMap show . concatMap (tripleBit . eightBit . toBin . ord)
decode = map (chr . toDec) . chunksOf 8 . map correctBits . triples

triples :: [Char] -> [[Int]]
triples = map (map digitToInt) . chunksOf 3

correctBits :: [Int] -> Int
correctBits [0, 0, 1] = 0
correctBits [0, 1, 0] = 0
correctBits [1, 0, 0] = 0
correctBits [0, 0, 0] = 0
correctBits _ = 1

toDec :: [Int] -> Int
toDec = foldl (\acc curr -> acc * 2 + curr) 0

tripleBit :: [Int] -> [Int]
tripleBit = foldr (\curr acc -> [curr, curr, curr] ++ acc) []

eightBit :: [Int] -> [Int]
eightBit xs =
  let zeros = replicate (8 - length xs) 0
   in zeros ++ xs

toBin :: Int -> [Int]
toBin 0 = []
toBin x = toBin (x `div` 2) ++ [x `mod` 2]

