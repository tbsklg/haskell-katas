module Kyu6.BuyCar where

import Debug.Trace

nbMonths :: Integer -> Integer -> Integer -> Double -> [Integer]
nbMonths startPriceOld startPriceNew savingperMonth percentLossByMonth = go (fromIntegral startPriceOld) (fromIntegral startPriceNew) savingperMonth percentLossByMonth 1
 where
  go :: Double -> Double -> Integer -> Double -> Integer -> [Integer]
  go old new spm loss month
    | saving > 0 = [month, round saving]
    | odd month = go nextOld nextNew (spm + 1000) (loss + 0.5) (month + 1)
    | otherwise = go nextOld nextNew (spm + 1000) loss (month + 1)
   where
    saving = fromIntegral spm + savingCarSale

    savingCarSale = nextOld - nextNew
    nextOld = old * (1 - loss / 100)
    nextNew = new * (1 - loss / 100)
