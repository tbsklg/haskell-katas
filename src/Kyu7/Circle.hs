module Kyu7.Circle where

circleArea :: Double -> Maybe Double
circleArea x
    | x <= 0 = Nothing
    | otherwise = Just (x ^ 2 * pi)
