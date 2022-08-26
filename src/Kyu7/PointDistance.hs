module Kyu7.PointDistance where

data Point = Point Float Float Float deriving (Show, Eq)

distanceBetweenPoints :: Point -> Point -> Float
distanceBetweenPoints (Point x1 y1 z1) (Point x2 y2 z2) = sqrt ((x2 - x1) ^ 2 + (y2 - y1) ^ 2 + (z2 - z1) ^ 2)
