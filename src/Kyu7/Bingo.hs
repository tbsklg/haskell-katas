module Kyu7.Bingo (bingo) where

bingo :: [Int] -> String
bingo xs
    | bingo' = "WIN"
    | otherwise = "LOSE"
    where
        bingo' = foldl (\y x -> y && x `elem` xs) True [2, 9, 14, 7, 15]
