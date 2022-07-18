module Kyu7.SF4 where

phoneCall :: Int -> Int -> Int -> Int -> Int
phoneCall min1 min2 min3 money = first money
  where
    first money
      | money - min1 >= 0 = 1 + second (money - min1) 1
      | otherwise = 0

    second money 10 = rest money
    second money time
      | money - min2 >= 0 = 1 + second (money - min2) (time + 1)
      | otherwise = 0

    rest money
      | money >= min3 = floor (fromIntegral money / fromIntegral min3)
      | otherwise = 0
