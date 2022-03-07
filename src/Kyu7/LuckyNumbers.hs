module Kyu7.LuckyNumbers where

filterLucky :: [Int] -> [Int]
filterLucky = map read . filter(\x -> '7' `elem` x) . map show
