module Kyu7.Clonewars where

clonewars :: Integer -> (Integer, Integer)
clonewars 0 = (1, 0)
clonewars k = (clones, katas)
  where
    katas = sum . zipWith (*) [k, (k - 1) .. 1] $ iterate (* 2) 1
    clones = last . take (fromIntegral k) . iterate (* 2) $ 1

-- clonewars n = (2 ^ max 0 (n-1), 2 ^ (n+1) - (n+2))
