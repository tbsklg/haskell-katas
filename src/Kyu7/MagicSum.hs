module Kyu7.MagicSum where

magicSum :: [Int] -> Int
magicSum = sum . map toDigit . filter (\x -> 3 `elem` x) . map digits . filter odd

digits :: Int -> [Int]
digits 0 = []
digits x = digits (x `div` 10) ++ [x `mod` 10]

toDigit :: [Int] -> Int
toDigit = foldl (\y x -> 10 * y + x) 0
