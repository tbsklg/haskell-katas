module Kyu7.SimpleFibStrings where

solve :: Int -> String
solve = fibs

fibs :: (Eq a, Num a) => a -> [Char]
fibs 0 = "0"
fibs 1 = "01"
fibs n = fibs (n - 1) ++ fibs (n - 2)

-- fibo :: [String]
-- fibo = "0" : "01" : zipWith (++) (tail fibo) fibo

-- solve :: Int -> String
-- solve = (fibo !!)
