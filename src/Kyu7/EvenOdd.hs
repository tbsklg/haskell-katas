module Kyu7.EvenOdd where

import Data.Char (isNumber, isDigit)

solve :: [String] -> Int
solve xs = evens - odds
    where
        evens = length . filter even $ nums
        odds = length . filter odd $ nums
        nums = numbers' xs

isNumber' :: String -> Bool
isNumber' = all isDigit

numbers' :: [String] -> [Int]
numbers' = map read . filter (all isDigit) 
