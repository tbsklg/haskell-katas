module Kyu6.HammingCode (decode, encode) where

import Data.Char (chr, digitToInt)
import Data.List (sort)
import Data.List.Split (chunksOf)
import Text.Printf (printf)

decode, encode :: [Char] -> [Char]
encode = concatMap (replicate 3) . toEightBitBin
decode = map (chr . toDec) . chunksOf 8 . map correctBits . triples

triples :: [Char] -> [[Int]]
triples = map (map digitToInt) . chunksOf 3

correctBits :: [Int] -> Int
correctBits [] = error "Cannot correct bits when no bits are given"
correctBits [_] = error "Cannot correct bits when only one bit is given"
correctBits xs = (!! 1) . sort $ xs

toDec :: [Int] -> Int
toDec = foldl (\acc curr -> acc * 2 + curr) 0

toEightBitBin :: [Char] -> [Char]
toEightBitBin = concatMap (printf "%08b")
