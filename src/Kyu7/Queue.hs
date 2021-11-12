module Kyu7.Queue where

queue :: [Int] -> Int -> Int
queue q p = time . zip [0 ..] $ q
  where
    time [] = 0
    time ((x, y) : zs)
      | x == p && y == 1 = 1 + time []
      | y == 1 = 1 + time zs
      | otherwise = 1 + time (zs ++ [(x, y - 1)])
