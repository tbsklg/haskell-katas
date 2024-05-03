module Kyu6.Tortoise where

race :: Int -> Int -> Int -> Maybe (Int, Int, Int)
race v1 v2 g
  | v1 >= v2 = Nothing
  | otherwise = Just (hours, minutes, seconds)
  where
    deltaV = fromIntegral (v2 - v1)
    hours = floor (fromIntegral g / deltaV)
    minutes = floor ((fromIntegral g / deltaV - fromIntegral hours) * 60 + 0.01)
    seconds = floor ((fromIntegral g / deltaV - fromIntegral hours - fromIntegral minutes / 60) * 3600 + 0.01)
