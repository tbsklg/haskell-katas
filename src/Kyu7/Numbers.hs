module Kyu7.Numbers where

isTriangular :: Int -> Bool
isTriangular t = (==) t . head . dropWhile (< t) . map asTriangle $ [1 ..]

asTriangle :: Integral a => a -> a
asTriangle n = n * (n + 1) `div` 2
