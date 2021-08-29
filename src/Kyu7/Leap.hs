module Kyu7.Leap where

isLeapYear :: Int -> Bool
isLeapYear x = (x `mod` 100 /= 0 && x `mod` 4 == 0) || x `mod` 400 == 0
