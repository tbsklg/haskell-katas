module Kyu6.Tribonacci where

tribonacci :: Num a => (a, a, a) -> Int -> [a]
tribonacci (a, b, c) n = foldl (\y x -> y ++ [sum . take 3 . drop x $ y]) [a, b, c] [0 .. (n - 4)]

-- tribonacci :: Num a => (a, a, a) -> Int -> [a]
-- tribonacci _ n | n < 1 = []
-- tribonacci (a, b, c) n = a : tribonacci (b, c, a+b+c) (n-1)
