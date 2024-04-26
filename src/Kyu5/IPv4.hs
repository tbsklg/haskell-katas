module Kyu5.IPv4 where

import Data.Word  (Word32)
import Data.List.Split (chunksOf)
import Data.List (intercalate)
import Data.Bits

type IPString = String
type Bits' = [Int]
type Bit32 = [Int]
type Bit8 = [Int]

type Octets = [Bit8]

word32ToIP :: Word32 -> IPString
word32ToIP = intercalate "." . map (show . toDec) . toOctets . toBit32 . binary

toDec :: Bit8 -> Int
toDec = foldl (\acc x -> acc * 2 + x) 0

toOctets :: Bit32 -> Octets
toOctets = chunksOf 8

toBit32 :: Bits' -> Bit32
toBit32 xs = replicate (32 - length xs) 0 ++ xs

binary :: Word32 -> Bits'
binary 0 = []
binary x = binary (x `div` 2) ++ [fromIntegral x `mod` 2]

