module Kyu7.Divisible where

isDivisible :: Integral n => n -> [n] -> Bool
isDivisible n xs = foldl (\y x -> y && n `mod` x == 0) True xs

-- isDivisible n = all (\x -> n `mod` x == 0)
