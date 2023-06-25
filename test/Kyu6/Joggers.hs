module Kyu6.Joggers where

-- use the least common multiple (lcm) instead

nbrOfLaps :: Integer -> Integer -> (Integer, Integer)
nbrOfLaps bob charles = go 1 1
  where
    go x y
      | x * bob == y * charles = (x, y)
      | x * bob < y * charles = go (x + 1) y
      | otherwise = go x (y + 1)
