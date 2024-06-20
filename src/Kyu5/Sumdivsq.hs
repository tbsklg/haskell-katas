module Kyu5.Sumdivsq where

listSquared :: Int -> Int -> [(Int, Int)]
listSquared m n = 
  [(x, sum $ map (^ 2) $ divisors x) | x <- [m .. n], isSquare $ sum $ map (^ 2) $ divisors x]

isSquare :: Int -> Bool
isSquare n = n == round (sqrt $ fromIntegral n) ^ 2

divisors :: Int -> [Int]
divisors n = [x | x <- [1 .. n], n `mod` x == 0]
