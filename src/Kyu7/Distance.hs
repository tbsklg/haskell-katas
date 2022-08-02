module Kyu7.Distance where

import Data.List (genericLength)

distancesFromAverage :: [Double] -> [Double]
distancesFromAverage xs = map distance xs
  where
    average = sum xs / genericLength xs
    distance n = round2 . (-) average $ n

round2 :: (RealFrac a1, Fractional a2) => a1 -> a2
round2 n = fromIntegral (round (n * 100)) / 100
