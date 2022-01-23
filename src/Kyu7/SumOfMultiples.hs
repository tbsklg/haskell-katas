module Kyu7.SumOfMultiples where

findSum :: Integral c => c -> c
findSum n = sum . takeWhile (<= n) . filter (\x -> x `mod` 3 == 0 || x `mod` 5 == 0) $ [1 ..]

-- findSum n = sum [x | x <- [1 .. n], mod x 3 == 0|| mod x 5 == 0]
