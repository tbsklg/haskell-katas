module Kyu7.Bus where

number :: [(Int, Int)] -> Int
number xs = taking - dropping
    where
        taking = sum $ map fst xs
        dropping = sum $ map snd xs
