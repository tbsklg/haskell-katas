module Kyu7.Time where

calculateTime :: Int -> Int -> Double
calculateTime b c = fastCharge b c + decreasingCharge b c + trickleCharge b c

fastCharge :: Int -> Int -> Double
fastCharge b = (/) (fromIntegral b * 0.85) . fromIntegral

decreasingCharge :: Int -> Int -> Double
decreasingCharge b = (/) (fromIntegral b * 0.10) . (*) 0.5 . fromIntegral

trickleCharge :: Int -> Int -> Double
trickleCharge b = (/) (fromIntegral b * 0.05) . (*) 0.2 . fromIntegral
