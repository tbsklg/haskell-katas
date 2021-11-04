module Kyu7.SumDifferencesBetweenProductsAndLCMs where

sumDiffs :: [(Integer, Integer)] -> Integer
sumDiffs = sum . map (\x -> uncurry (*) x - uncurry lcm x)
