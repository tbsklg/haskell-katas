module Kyu7.Incrementer (incrementer) where

incrementer :: (Integral a) => [a] -> [a]
incrementer = zipWith (\ x y -> (x + y) `mod` 10) [1 ..]
