module Kyu6.VolTank where

tankvol :: Int -> Int -> Int -> Int
tankvol h d vt = round segmentArea
  where
    radius = fromIntegral d / 2
    length = fromIntegral vt / (pi * (radius ^ 2))
    segmentArea = 0.5 * radius ^ 2 * (centralAngle - sin centralAngle) * length
    centralAngle = 2 * acos ((radius - fromIntegral h) / radius)
