module Kyu7.ShortestDistance where

shortestDistance :: Double -> Double -> Double -> Double
shortestDistance a b c = minimum [hypothenuse (a + b) c, hypothenuse a (b + c), hypothenuse (a + c) b]
  where
    hypothenuse a b = sqrt (a ^ 2 + b ^ 2)
