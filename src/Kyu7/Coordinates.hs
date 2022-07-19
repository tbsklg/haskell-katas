module Kyu7.Coordinates where

coordinates :: Double -> Double -> (Double, Double)
coordinates degrees radius =
  (  radius * cos (degrees * (pi / 180)),
     radius * sin (degrees * (pi / 180))
  )

