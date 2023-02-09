module Kyu6.Xbonacci where

xbonacci :: (Num a, Show a) => [a] -> Int -> [a]
xbonacci as n = take n . foldl (\y x -> y ++ [sum . take n . drop x $ y]) as $ [0 .. (n - length as)]
