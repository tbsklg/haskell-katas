module Kyu7.SumCubes where

sumCubes :: Integer -> Integer
sumCubes n = sum $ take (fromIntegral n) $ map (^ 3) (iterate (+ 1) 1)
