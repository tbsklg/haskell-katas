module Kyu7.GridIndex (gridIndex) where

gridIndex :: [[Char]] -> [Int] -> String
gridIndex c = map (\x -> concat c !! (x - 1))
