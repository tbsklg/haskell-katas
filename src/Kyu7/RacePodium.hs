module Kyu7.RacePodium where

racePodium :: Int -> (Int, Int, Int)
racePodium blocks = go (s, f, t)
  where
    go b@(s, f, t)
      | t == 0 = go (nextS, nextF, nextT)
      | otherwise = b
      where
        nextS = s - 1
        nextF = f
        nextT = blocks - nextF - nextS

    s = f - 1
    f = ceiling (fromIntegral blocks / 3) + 1
    t = blocks - f - s
