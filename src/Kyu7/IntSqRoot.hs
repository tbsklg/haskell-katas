module Kyu7.IntSqRoot where

intRac :: Integer -> Integer -> Integer
intRac n x
  | abs (x - newX) >= 1 = 1 + intRac n newX
  | otherwise = 1
  where
    newX = floor ((fromIntegral x + fromIntegral n / fromIntegral x) / 2)
