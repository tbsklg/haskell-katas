module Kyu7.LuckyNumberChecker where

isLucky :: Integer -> Bool
isLucky = (==) 0 . flip mod 9 . sum . digits

digits :: (Integral a) => a -> [a]
digits 0 = []
digits i = digits (i `div` 10) ++ [i `mod` 10]
