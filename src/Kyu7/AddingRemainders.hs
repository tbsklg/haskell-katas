module Kyu7.AddingRemainders where

solve :: [Int] -> Int -> [Int]
solve xs div = map (\x -> (x `mod` div) + x) xs
