module Kyu6.Ball where

maxBall :: Int -> Int
maxBall v0 = go [0, 0.1 ..]
  where
    go (x : y : xs)
      | height (fromIntegral v0) y > height (fromIntegral v0) x = 1 + go (y : xs)
      | otherwise = 0
    go _ = 0

height :: Double -> Double -> Double
height v t = kmhToMs v * t - (0.5 * g * t ^ 2)

g :: Double
g = 9.81

kmhToMs :: Double -> Double
kmhToMs kmh = kmh * 1000 / 3600
