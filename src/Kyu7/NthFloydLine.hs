module Kyu7.NthFloydLine where 

nthFloyd :: Int -> Int
nthFloyd n = length . takeWhile (\x -> n > x) . map gauss $ [0 ..]

gauss n = n * (n + 1) `div` 2
