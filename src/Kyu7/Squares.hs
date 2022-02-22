module Kyu7.Squares where

differenceOfSquares :: Integer -> Integer
differenceOfSquares n = gauss ^ 2 - s
  where
    gauss = (n * (n + 1)) `div` 2
    s = sum . map (^ 2) $ [1 .. n]

-- differenceOfSquares n = (3*n+2) * (n-1) * n * (n+1) `div` 12
