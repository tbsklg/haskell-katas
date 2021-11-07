module Kyu7.Wheat where

squaresNeeded :: Int -> Int
squaresNeeded  n = ceiling . logBase 2 $ fromIntegral (n + 1)
