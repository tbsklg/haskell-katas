module Kyu7.Sheep where

lostSheep :: [Int] -> [Int] -> Int -> Int
lostSheep f s a = (-) a . (+) (sum s) . sum $ f
