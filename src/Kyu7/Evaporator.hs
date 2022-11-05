module Kyu7.Evaporator where

evaporator :: Double -> Double -> Double -> Integer
evaporator content evap_per_day threshold = floor $ calcRemaining content
  where
    calcRemaining current
      | current > (threshold / 100) * content = 1 + calcRemaining ((1 - (evap_per_day / 100)) * current)
      | otherwise = 0

-- evaporator c e t = ceiling (log thr / log r)
--   where
--     r = 1 - (e / 100)
--     thr = t / 100
