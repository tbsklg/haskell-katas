module Kyu7.Candies where

distribute :: Int -> Int -> [Int]
distribute m 0 = []
distribute m n
  | n < 0 = []
  | otherwise = dist m n
  where
    dist candies 0 = []
    dist candies children = candiesForChild : dist (candies - candiesForChild) (children - 1)
      where
        candiesForChild = maximum [0, ceiling $ fromIntegral candies / fromIntegral children]
