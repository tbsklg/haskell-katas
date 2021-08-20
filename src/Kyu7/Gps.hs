module Kyu7.Gps where

gps :: Int -> [Double] -> Int
gps _ [] = 0
gps _ [_] = 0
gps s x = floor . maximum $ distancesPerHour s x

distancesPerHour :: Int -> [Double] -> [Double]
distancesPerHour _ [_] = []
distancesPerHour s (x : y : ys) = perHour (y - x) s : distancesPerHour s (y : ys)

perHour :: Double -> Int -> Double
perHour d s = (3600 * d) / fromIntegral s

-- gps :: Int -> [Double] -> Int
-- gps s x
--     | length x <= 1 = 0
--     | otherwise = floor $ maximum $ zipWith(\a b -> 3600 * (a - b) / fromIntegral s) (tail x) x
