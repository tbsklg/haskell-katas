module Kyu7.SF37 where

houseNumbersSum :: [Int] -> Int
houseNumbersSum = sum . takeWhile (/=0)
