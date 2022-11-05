module Kyu7.Dateamount where

import Data.Time
import Data.Time.Format

dateNbDays :: Double -> Double -> Double -> String
dateNbDays a0 a p = calcDays a0 (fromGregorian 2016 01 01)
  where
    calcDays current d
      | current < a = calcDays (current + current * (p / 36000)) (addDays 1 d)
      | otherwise = show d
