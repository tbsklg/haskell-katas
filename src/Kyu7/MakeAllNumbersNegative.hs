module Kyu7.MakeAllNumbersNegative where

makeNegative :: [Int] -> [Int]
makeNegative = map (\x -> abs x * (-1))
