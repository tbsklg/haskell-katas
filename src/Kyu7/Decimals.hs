module Kyu7.Decimals where

twoDecimalPlaces :: Double -> Double
twoDecimalPlaces = format

format :: (RealFrac a1, Fractional a2) => a1 -> a2
format n
  | n < 0 = fromIntegral (ceiling (n * 10 ^ 2)) / 10 ^ 2
  | otherwise = fromIntegral (floor (n * 10 ^ 2)) / 10 ^ 2

-- twoDecimalPlaces = (/100) . fromInteger . truncate . (*100)
