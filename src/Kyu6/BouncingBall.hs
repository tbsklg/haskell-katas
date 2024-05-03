module Kyu6.BouncingBall where

bouncingBall :: Double -> Double -> Double -> Integer
bouncingBall height bounce window
  | height <= 0 || bounce <= 0 || bounce >= 1 || window >= height = -1
  | otherwise = 1 + bounce' height bounce window
  where
    bounce' h b w
      | h * b <= w = 0
      | otherwise = 2 + bounce' (h * b) b w
