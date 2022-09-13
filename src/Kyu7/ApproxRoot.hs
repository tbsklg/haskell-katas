module Kyu7.ApproxRoot where

--no rounding, just compares ~0.01 accuracy

approxRoot :: Int -> Double
approxRoot n = fromIntegral base + (fromIntegral diffGn / fromIntegral diffLg)
  where
    base = last . takeWhile (\x -> x ^ 2 < n) $ [1 ..]
    lowestPerfectSquare = head . dropWhile (\x -> x ^ 2 < n) $ [1 ..]
    diffGn = n - base ^ 2
    diffLg = lowestPerfectSquare ^ 2 - base ^ 2
