module Kyu7.DigitsAverage where

digitsAverage :: Int -> Int
digitsAverage x = go . digits $ x
  where
    go [x] = x
    go xs = go . zipWith (curry average) xs $ tail xs

average :: (Integral b, Integral a1, Integral a2) => (a1, a2) -> b
average (x, y) = ceiling ((fromIntegral x + fromIntegral y) / 2)

digits :: (Integral a) => a -> [a]
digits 0 = []
digits x = digits (x `div` 10) ++ [x `mod` 10]
