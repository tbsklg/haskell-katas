module Kyu7.Fuel where

mpg_lp100km :: Double -> Double
mpg_lp100km mpg = round2 $ (100 * gallon) / (mile * mpg)

lp100km_mpg :: Double -> Double
lp100km_mpg = mpg_lp100km

gallon :: Double
gallon = 3.785411784

mile :: Double
mile = 1.609344

round2 :: (RealFrac a1, Fractional a2) => a1 -> a2
round2 n = fromIntegral (round (n * 10 ^ 2)) / 10 ^ 2
