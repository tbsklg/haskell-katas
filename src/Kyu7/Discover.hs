module Kyu7.Discover where

discoverOriginalPrice :: Double -> Double -> Double
discoverOriginalPrice a b = round2 (a * 100 / (100 - b))

round2 :: (RealFrac a1, Fractional a2) => a1 -> a2
round2 n = fromIntegral (round (n * 10 ^ 2)) / 10 ^ 2
