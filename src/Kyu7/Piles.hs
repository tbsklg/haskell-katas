module Kyu7.Piles where

fourPiles :: Int -> Int -> Maybe (Int, Int, Int, Int)
fourPiles n y = findX y
  where
    findX x
      | x > n = Nothing
      | (fromIntegral x + fromIntegral y) + (fromIntegral x - fromIntegral y) + (fromIntegral x * fromIntegral y) + (fromIntegral x / fromIntegral y) == fromIntegral n && x /= y = Just (x + y, x - y, x * y, x `div` y)
      | otherwise = findX (x + 1)
