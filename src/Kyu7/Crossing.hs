module Kyu7.Crossing where

crossingSum :: [[Int]] -> Int -> Int -> Int
crossingSum xs row col = sumRow + sumCol
  where
    sumRow = sum $ xs !! row
    sumCol = sum . map ((!! col) . snd) . filter (\(i, _) -> i /= row) . zip [0 ..] $ xs
