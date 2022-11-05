module Kyu7.MinimumPerimeter where

import Debug.Trace (traceShow)

minimumPerimeter :: Integer -> Integer
minimumPerimeter area =
  go (perimeter 1 area)
    . map (\x -> perimeter x (area `div` x))
    . filter (\x -> area `mod` x == 0)
    $ [1 .. ceiling . sqrt . fromIntegral $ area]
  where
    go min [] = min
    go min l@(x : xs)
      | x <= min = go x xs
      | otherwise = traceShow l min

perimeter :: Num a => a -> a -> a
perimeter x y = 2 * x + 2 * y
