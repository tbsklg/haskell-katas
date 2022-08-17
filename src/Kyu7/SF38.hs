module Kyu7.SF38 where

houseOfCats :: Int -> [Int]
houseOfCats x
    | x `mod` 4 == 0 = [0, 2 .. x `div` 2]
    | otherwise = [1, 3 .. x `div` 2]
