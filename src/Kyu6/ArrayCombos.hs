module Kyu6.ArrayCombos where
import Data.List (nub)

solve :: [[Int]] -> Int
solve = product . map (length . nub)
