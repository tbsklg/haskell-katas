module Kyu7.StringMatch where

solve :: [String] -> [String] -> [Int]
solve xs = map (\x -> length . filter (== x) $ xs)
