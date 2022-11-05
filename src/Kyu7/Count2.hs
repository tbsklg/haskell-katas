module Kyu7.Count2 where

countZeros :: Int -> Int
countZeros n = sum . map zeros $ [1 .. n]

zeros :: Int -> Int
zeros = length . filter (== '0') . show
