module Kyu7.Operation (result) where

result :: [[Int]] -> Int
result s = product $ map sum s
