module Kyu6.RowTriangle where

oddRow :: Integer -> [Integer]
oddRow n = take (fromIntegral n) . drop (fromIntegral (gauss (n - 1))) $ [1, 3 ..]

gauss :: Integer -> Integer
gauss n = (n * (n + 1)) `div` 2
