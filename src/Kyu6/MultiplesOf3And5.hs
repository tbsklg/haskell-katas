module Kyu6.MultiplesOf3And5 where

solution :: Integer -> Integer
solution number =  sum . filter (\x -> x `mod` 3 == 0 || x `mod` 5 == 0) $ [1 .. number]
