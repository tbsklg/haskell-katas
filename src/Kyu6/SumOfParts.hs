module Kyu6.SumOfParts where

partsSum :: [Integer] -> [Integer]
partsSum xs = scanl (\y x -> y - x) (sum xs) xs

-- scanr (+) xs
