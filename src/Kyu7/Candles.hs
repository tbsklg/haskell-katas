module Kyu7.Candles where

candles :: Int -> Int -> Int
candles c m = c + go c
  where
    go l
      | l >= m = l `div` m + go (l `div` m + l `mod` m)
      | otherwise = 0
