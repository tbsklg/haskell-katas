module Kyu7.NthFloydLine where

nthFloyd :: Int -> Int
nthFloyd n = length . takeWhile (n >) . map gauss $ [0 ..]

gauss :: Integral a => a -> a
gauss n = n * (n + 1) `div` 2
