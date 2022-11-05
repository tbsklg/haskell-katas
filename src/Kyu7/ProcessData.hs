module Kyu7.ProcessData where

processData :: [[Int]] -> Int
processData = product . map (\(x : y : _) -> x - y)
