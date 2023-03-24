module Kyu6.OddHeavyArray where

isOddHeavy :: [Int] -> Bool 
isOddHeavy xs
    | null odds = False
    | otherwise = foldl (\y x -> y && all (x <) odds) True evens
    where
        odds = filter odd xs
        evens = filter even xs 

-- (evens, odds) = partition even xs

